using Serilog;
using TesteXP.Usuarios.Application.Interfaces.ApiClients;
using TesteXP.Usuarios.Application.Interfaces.Events.Handlers;
using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.Models.Requests;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;
using TesteXP.Usuarios.Application.Util;

namespace TesteXP.Usuarios.Application.Events.Handlers
{
    public class UsuarioCadastradoKeyCloakHandler : IUsuarioCadastradoKeyCloakHandler
    {
        private readonly IKeycloakHttpClient _httpClient;
        private readonly Dictionary<ETipoUsuario, string> _roleDict;

        public UsuarioCadastradoKeyCloakHandler(IKeycloakHttpClient httpClient)
        {
            _httpClient = httpClient;

            _roleDict = new Dictionary<ETipoUsuario, string>
            {
                {ETipoUsuario.Admin, "Admin"},
                {ETipoUsuario.Investidor, "Investidor"}
            };
        }

        public async Task Handle(EventoPO evento)
        {
            var usuario = evento.GetUsuario()
                ?? throw new Exception("não foi possível deserializar o usuário presente no snapshot");

            var credentials = new Credentials
            {
                temporary = false,
                type = "password",
                value = CriptografiaHelper.Base64Decode(usuario.Senha)
            };

            var request = new CreateKeycloakUserRequest
            {
                email = usuario.Email,
                emailVerified = false,
                enabled = true,
                username = usuario.Nome,
                firstName = usuario.Nome,
                groups = new List<string> { _roleDict[(ETipoUsuario)usuario.Tipo] },
                credentials = new List<Credentials> { credentials }
            };

            await _httpClient.CadastrarUsuario(request);

            Log.Information($"usuario {usuario.Email} cadastrado no keycoak");
        }
    }
}