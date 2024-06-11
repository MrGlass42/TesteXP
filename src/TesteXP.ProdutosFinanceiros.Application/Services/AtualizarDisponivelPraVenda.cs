using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class AtualizarDisponivelPraVenda : IAtualizarDisponivelPraVenda
{
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
    private readonly IInvestidorRepository _investidorRepository;

    public AtualizarDisponivelPraVenda(IProdutoFinanceiroRepository produtoFinanceiroRepository, IInvestidorRepository investidorRepository)
    {
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
        _investidorRepository = investidorRepository;

    }


    public async Task Atualizar(string email, bool disponivelParaVenda, int produtoFinanceiroId)
    {
        var investidor = await _investidorRepository.ConsultarPorEmail(email)
            ?? throw new InvestidorNaoEncontradoException("não foi possivel encontrar o investidor");

        var produtos = await _produtoFinanceiroRepository.ConsultarProdutosDeUmInvestidor(investidor.Id);

        var produto = produtos.Where(x => x.Id == produtoFinanceiroId).FirstOrDefault();
        if (produto is null)
            throw new ProdutoFinanceiroNaoEncontradoException($"não foi possível encontrar o produto: {produtoFinanceiroId}");

        produto.DisponivelParaVenda = disponivelParaVenda;

        await _produtoFinanceiroRepository.Atualizar(produto);
    }
}