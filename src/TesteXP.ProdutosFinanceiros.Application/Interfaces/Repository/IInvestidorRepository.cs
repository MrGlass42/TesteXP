using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;

public interface IInvestidorRepository
{
    Task<Investidor?> ConsultarPorEmail(string email);
    Task<Investidor?> ConsultarPorId(int id);
    Task<Investidor?> ConsultarPorProdutoId(int produtoId);
}