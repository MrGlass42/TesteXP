namespace TesteXP.Api.Exceptions
{
    public class EmailInvalidoException : Exception
    {
        public EmailInvalidoException(string? message) : base(message)
        {
        }
    }
}