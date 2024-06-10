namespace TesteXP.Usuarios.Application.Exceptions;

public class KeycloakException : Exception
{
    public KeycloakException(string? message) : base(message)
    {
    }
}