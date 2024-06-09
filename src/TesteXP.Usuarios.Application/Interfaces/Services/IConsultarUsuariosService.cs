using TesteXP.Usuarios.Application.Models.Responses;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IConsultarUsuariosService
    {
        Task<ConsultarUsuariosResponse> Executar();
    }
}