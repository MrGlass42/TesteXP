namespace TesteXP.ProdutosFinanceiros.Application.Exceptions;

public class ProdutoNaoDisponivelParaVendaException : Exception
{
    public ProdutoNaoDisponivelParaVendaException(string? message) : base(message)
    {
    }
}
