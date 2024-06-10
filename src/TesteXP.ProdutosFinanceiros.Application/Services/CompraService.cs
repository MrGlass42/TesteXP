using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class CompraService : ICompraService
{
    private readonly IInvestidorRepository _investidorRepository;
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
    private readonly IOperacaoFinanceiraRepository _operacaoFinanceiraRepository;

    public CompraService(
        IInvestidorRepository investidorRepository, 
        IProdutoFinanceiroRepository produtoFinanceiroRepository, 
        IOperacaoFinanceiraRepository operacaoFinanceiraRepository
    )
    {
        _investidorRepository = investidorRepository;
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
        _operacaoFinanceiraRepository = operacaoFinanceiraRepository;
    }


    public async Task Executar(string emailInvestidor, int produtoFinanceiroId)
    {
        var comprador = await _investidorRepository.ConsultarPorEmail(emailInvestidor)
            ?? throw new InvestidorNaoEncontradoException("não foi possível identificar o usuário do comprador");

        var produtoFinanceiro = await _produtoFinanceiroRepository.ConsultarPorId(produtoFinanceiroId)
            ?? throw new ProdutoFinanceiroNaoEncontradoException("não foi possível identificar o produto para compra");
            
        if(produtoFinanceiro.DisponivelParaVenda is false)
            throw new ProdutoNaoDisponivelParaVendaException("o produto em questão não está disponível para venda");

        var valorAtualProduto = await _produtoFinanceiroRepository.ConsultarValorAtualProduto(produtoFinanceiroId);

        var vendedor = await _investidorRepository.ConsultarPorProdutoId(produtoFinanceiroId);

        comprador.DebitarSaldo(valorAtualProduto);

        if(vendedor is not null)
            vendedor.CreditarSaldo(valorAtualProduto);

        _operacaoFinanceiraRepository.RegistrarCompra(comprador, produtoFinanceiroId, valorAtualProduto, vendedor);
    }
}