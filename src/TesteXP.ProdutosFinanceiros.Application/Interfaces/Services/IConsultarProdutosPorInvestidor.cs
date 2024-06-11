using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

public interface IConsultarProdutosPorInvestidor
{
    Task<List<ProdutoFinanceiro>> Consultar(string email);
}
