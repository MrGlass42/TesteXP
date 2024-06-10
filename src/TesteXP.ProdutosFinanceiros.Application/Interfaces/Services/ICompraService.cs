namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

public interface ICompraService
{
    Task Executar(string emailInvestidor, int produtoFinanceiroId);
}
