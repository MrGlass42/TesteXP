using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Models.Responses;

namespace TesteXP.Usuarios.Application.Services
{
    public class ConsultarUsuariosService : IConsultarUsuariosService
    {
        private readonly IUsuarioRepository _usuarioRepo;

        public ConsultarUsuariosService(IUsuarioRepository usuarioRepo)
        {
            _usuarioRepo = usuarioRepo;
        }

        public async Task<ConsultarUsuariosResponse> Executar()
        {
            var usuarios = await _usuarioRepo.Consultar();

            return new ConsultarUsuariosResponse(usuarios);
        }
    }
}