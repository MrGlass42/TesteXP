using TesteXP.Usuarios.Application.Exceptions;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Services
{
    public class ExcluirUsuarioService : IExcluirUsuarioService
    {
        private readonly IUsuarioRepository _usuarioRepo;
        private readonly ICustomValidator<ExcluirUsuarioRequest> _validator;

        public ExcluirUsuarioService(IUsuarioRepository usuarioRepo, ICustomValidator<ExcluirUsuarioRequest> validator)
        {
            _usuarioRepo = usuarioRepo;
            _validator = validator;
        }

        public async Task Processar(ExcluirUsuarioRequest request)
        {
            _validator.ExecuteValidation(request);

            var usuario = await _usuarioRepo.ConsultarPorId(request.Id)
                ?? throw new UsuarioNaoEncontradoException("usuário informado para excluir não existe.");

            _usuarioRepo.Excluir(usuario);
        }
    }
}