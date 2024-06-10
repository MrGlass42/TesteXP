namespace TesteXP.ProdutosFinanceiros.Application.Exceptions;

public class ProdutoFinanceiroNaoEncontradoException : Exception
{
    public ProdutoFinanceiroNaoEncontradoException(string? message) : base(message)
    {
    }
}