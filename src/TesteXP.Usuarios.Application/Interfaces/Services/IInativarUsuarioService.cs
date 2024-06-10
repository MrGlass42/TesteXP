using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IInativarUsuarioService
    {
        Task Processar(ExcluirUsuarioRequest request);
    }
}