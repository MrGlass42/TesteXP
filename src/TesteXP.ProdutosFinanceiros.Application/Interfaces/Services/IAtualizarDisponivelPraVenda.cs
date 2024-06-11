namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services
{
    public interface IAtualizarDisponivelPraVenda
    {
        Task Atualizar(string email, bool disponivelParaVenda, int produtoFinanceiroId);
    }
}