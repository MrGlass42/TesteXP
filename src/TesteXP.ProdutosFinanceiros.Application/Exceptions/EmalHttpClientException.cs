namespace TesteXP.ProdutosFinanceiros.Application.Exceptions
{
    public class EmalHttpClientException : Exception
    {
        public EmalHttpClientException(string? message) : base(message)
        {
        }
    }
}