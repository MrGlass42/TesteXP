namespace TesteXP.ProdutosFinanceiros.Application.Exceptions;

public class CompradorJaPossuiProdutoException : Exception
{
    public CompradorJaPossuiProdutoException(string? message) : base(message)
    {
    }
}