using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface ICadastrarProdutoFinanceiroService
    {
        Task Executar(CadastrarProdutoFinanceiroRequest request);
    }
}