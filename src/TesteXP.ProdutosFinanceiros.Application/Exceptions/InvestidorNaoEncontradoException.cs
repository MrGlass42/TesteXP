namespace TesteXP.ProdutosFinanceiros.Application.Exceptions;

public class InvestidorNaoEncontradoException : Exception
{
    public InvestidorNaoEncontradoException(string? message) : base(message)
    {
    }
}
