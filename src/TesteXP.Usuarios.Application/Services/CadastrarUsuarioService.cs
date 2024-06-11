using TesteXP.Usuarios.Application.Exceptions;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Models.Entidades;
using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Services
{
    public class CadastrarUsuarioService : ICadastrarUsuarioService
    {
        private readonly IUsuarioRepository _usuarioRepo;
        private readonly ICustomValidator<CadastrarUsuarioRequest> _validator;

        public CadastrarUsuarioService(IUsuarioRepository usuarioRepo, ICustomValidator<CadastrarUsuarioRequest> validator)
        {
            _usuarioRepo = usuarioRepo;
            _validator = validator;
        }

        public async Task Executar(CadastrarUsuarioRequest request)
        {
            _validator.ExecuteValidation(request);

            var cadastroPermitido = await _usuarioRepo.CadastroPermitido(request.Email, request.Nome);

            if (cadastroPermitido is false)
                throw new CadastroNegadoException(request.Email, "não foi possível cadastrar uma conta");

            var usuario = new Usuario(request.Nome, request.Tipo, request.Email, request.Senha);

            _usuarioRepo.Inserir(usuario);
        }
    }
}