using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IExcluirUsuarioService
    {
        Task Processar(ExcluirUsuarioRequest request);
    }
}