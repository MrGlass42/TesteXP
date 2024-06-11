using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IConsultarProdutosDisponiveisPraVenda
    {
        Task<List<ProdutoFinanceiro>> Consultar();
    }
}