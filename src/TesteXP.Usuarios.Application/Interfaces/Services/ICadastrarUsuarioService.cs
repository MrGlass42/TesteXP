using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface ICadastrarUsuarioService
    {
        Task Executar(CadastrarUsuarioRequest request);
    }
}