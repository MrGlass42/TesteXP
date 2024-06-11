using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

public interface IConsultarTodosOsProdutos
{
    Task<List<ProdutoFinanceiro>> Consultar();
}
