namespace TesteXP.Usuarios.Application.Exceptions
{
    public class CadastroNegadoException : Exception
    {
        public CadastroNegadoException(string email, string message) : base(message)
        {
            Email = email;
        }

        public string Email { get; set; }
    }
}