using TesteXP.Usuarios.Application.Models.Entidades;

namespace TesteXP.Usuarios.Application.Models.Responses
{
    public class ConsultarUsuariosResponse
    {
        public ConsultarUsuariosResponse(List<Usuario> usuarios)
        {
            Usuarios = usuarios;
        }

        public List<Usuario> Usuarios {get;set;}
    }
}