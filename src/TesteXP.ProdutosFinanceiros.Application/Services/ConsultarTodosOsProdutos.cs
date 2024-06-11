using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class ConsultarTodosOsProdutos : IConsultarTodosOsProdutos
{
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;

    public ConsultarTodosOsProdutos(IProdutoFinanceiroRepository produtoFinanceiroRepository)
    {
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
    }


    public async Task<List<ProdutoFinanceiro>> Consultar() =>
        await _produtoFinanceiroRepository.ConsultarTodosOsProdutos();
}
