using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IAtualizarProdutoFinanceiroService
    {
        Task Atualizar(AtualizarProdutoFinanceiroRequest request);
    }
}