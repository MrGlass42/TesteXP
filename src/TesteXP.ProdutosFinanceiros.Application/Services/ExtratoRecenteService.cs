using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Responses;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class ExtratoRecenteService : IExtratoRecenteService
{
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
    private readonly IInvestidorRepository _investidorRepository;

    public ExtratoRecenteService(
        IProdutoFinanceiroRepository produtoFinanceiroRepository, 
        IInvestidorRepository investidorRepository
    )
    {
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
        _investidorRepository = investidorRepository;
    }

    public async Task<ExtratoResponse> Consultar(string email)
    {
        var investidor = await _investidorRepository.ConsultarPorEmail(email)
            ?? throw new InvestidorNaoEncontradoException("não foi possível encontrar o investidor");

        var produtos = await CalcularRendimentoDosProdutos(investidor.Id);

        return new ExtratoResponse
        {
            Email = investidor.Email,
            Nome = investidor.Nome,
            Saldo = investidor.Saldo.Valor,
            Produtos = produtos
        };
    }

    private async Task<List<ProdutoResponse>> CalcularRendimentoDosProdutos(int investidorId)
    {
        var extratoRecente = await _produtoFinanceiroRepository.ConsultarExtratoRecenteDoProduto(investidorId);

        var produtosResponse = new List<ProdutoResponse>();
        foreach (var reg in extratoRecente.GroupBy(x => x.ProdutoId))
        {
           var ultimoRegistroExtrato = extratoRecente.First();

            var produtoResponse = new ProdutoResponse
            {
                IdProduto = reg.Key,
                NomeProduto = ultimoRegistroExtrato.NomeProduto,
            };

            if (extratoRecente.Any())
            {
                decimal valorInicial = ultimoRegistroExtrato.ValorInicialProduto;
                decimal valorAtual = ultimoRegistroExtrato.ValorAnterior + (ultimoRegistroExtrato.ValorAnterior * ultimoRegistroExtrato.Rendimento);

                var rendimento = ((valorAtual / valorInicial) -1) * 100;

                produtoResponse.ValorAtual = valorAtual;
                produtoResponse.Mensagem = $"Este produto teve um rendimento de {rendimento}% desde seu cadastro";
            }
            else
                produtoResponse.Mensagem = $"Este produto ainda não teve o rendimento calculado";

            produtoResponse.HistoricoRendimento = extratoRecente.Select(x => new Extrato 
            {
                ValorAnterior = x.ValorAnterior,
                DataReferencia = x.DataReferencia,
                IdProdutoFinanceiro = x.ProdutoId,
                Rendimento = x.Rendimento
            });

            produtosResponse.Add(produtoResponse);
        }

        return produtosResponse;
    }

}