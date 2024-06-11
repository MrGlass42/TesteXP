using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class ConsultarProdutosPorInvestidor : IConsultarProdutosPorInvestidor
{
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
    private readonly IInvestidorRepository _investidorRepository;

    public ConsultarProdutosPorInvestidor(IProdutoFinanceiroRepository produtoFinanceiroRepository, IInvestidorRepository investidorRepository)
    {
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
        _investidorRepository = investidorRepository;
    }


    public async Task<List<ProdutoFinanceiro>> Consultar(string email)
    {
        var investidor = await _investidorRepository.ConsultarPorEmail(email)
            ?? throw new InvestidorNaoEncontradoException("não foi possivel encontrar o investidor");

        var produtos = await _produtoFinanceiroRepository.ConsultarProdutosDeUmInvestidor(investidor.Id);
        foreach (var prd in produtos)
            prd.ValorAtual = await _produtoFinanceiroRepository.ConsultarValorAtualProduto(prd.Id);

        return produtos;
    }
}