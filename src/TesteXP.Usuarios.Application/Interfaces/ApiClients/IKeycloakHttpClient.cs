using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Interfaces.ApiClients;

public interface IKeycloakHttpClient
{
    Task CadastrarUsuario(CreateKeycloakUserRequest request);
    Task ExcluirUsuario(string email);
}