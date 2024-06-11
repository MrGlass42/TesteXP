namespace TesteXP.ProdutosFinanceiros.Application.Exceptions;

public class ConfiguracaoInvalidaException : Exception
{
    public ConfiguracaoInvalidaException(string? message) : base(message)
    {
    }

}
