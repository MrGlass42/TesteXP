using Serilog;
using TesteXP.Usuarios.Application.Interfaces.ApiClients;
using TesteXP.Usuarios.Application.Interfaces.Events.Handlers;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Events.Handlers;

public class UsuarioInativadoKeycloakHandler : IUsuarioInativadoKeycloakHandler
{
    private readonly IKeycloakHttpClient _httpClient;

    public UsuarioInativadoKeycloakHandler(IKeycloakHttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    public async Task Handle(EventoPO evento)
    {
        var usuario = evento.GetUsuario()
            ?? throw new Exception("não foi possível deserializar o usuário presente no snapshot");

        await _httpClient.ExcluirUsuario(usuario.Email);

        Log.Information($"usuario {usuario.Email} excluido do keycoak");
    }
}
