using TesteXP.Usuarios.Application.Models.Enum;

namespace TesteXP.Usuarios.Application.Models.Requests
{
    public class CadastrarUsuarioRequest
    {
        public ETipoUsuario Tipo { get; set; }
        public string Nome { get; set; }
        public string Senha { get; set; }
        public string Email { get; set; }
    }
}