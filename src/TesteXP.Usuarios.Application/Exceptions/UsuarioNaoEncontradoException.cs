namespace TesteXP.Usuarios.Application.Exceptions
{
    public class UsuarioNaoEncontradoException : Exception
    {
        public UsuarioNaoEncontradoException(string? message) : base(message)
        {
        }
    }
}