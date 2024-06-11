using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IConsultarProdutoPorIdService
    {
        Task<ProdutoFinanceiro> ConsultarPorId(int id);
    }
}