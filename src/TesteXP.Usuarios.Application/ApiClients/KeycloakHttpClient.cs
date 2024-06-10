using Microsoft.Extensions.Configuration;
using System.Net;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using Serilog;
using TesteXP.Usuarios.Application.Exceptions;
using TesteXP.Usuarios.Application.Models.Reponses;
using TesteXP.Usuarios.Application.Models.Requests;
using TesteXP.Usuarios.Application.Interfaces.ApiClients;

namespace TesteXP.Usuarios.Application.ApiClients;

public class KeycloakHttpClient : IKeycloakHttpClient
{
    private readonly HttpClient _httpClient;
    private readonly IConfiguration _configuration;

    public KeycloakHttpClient(IHttpClientFactory httpClientFactory, IConfiguration configuration)
    {
        string baseUrl = configuration["HttpClientKeycloakConfig:Host"]!;

        if (string.IsNullOrEmpty(baseUrl))
            throw new KeycloakException("nenhuma configuração de host encontrada para o keycloak");

        _httpClient = httpClientFactory.CreateClient();
        _httpClient.BaseAddress = new Uri(baseUrl);

        _configuration = configuration;
    }

    public async Task CadastrarUsuario(CreateKeycloakUserRequest request)
    {
        var userUri = GetUsersUri()!;

        await GetAccessToken();

        var respostaApi = await _httpClient.PostAsJsonAsync(userUri, request);

        if (respostaApi.StatusCode == HttpStatusCode.Conflict)
            Log.Warning("usuário já existe na base do Keycloak {@request}", request);
        else if (respostaApi.IsSuccessStatusCode is false)
        {
            var respostaContent = await respostaApi.Content.ReadAsStringAsync();
            throw new KeycloakException($"Erro ao enviar requisição: {respostaContent}");
        }
    }

    public async Task ExcluirUsuario(string email)
    {
        string userUri = GetUsersUri()!;

        await GetAccessToken();

        var keycloakUser = await GetKeycloakUser(email, userUri);

        await ExlcuirUsuarioKeycloak(email, userUri, keycloakUser);
    }

    private async Task GetAccessToken()
    {
        string username = _configuration["HttpClientKeycloakConfig:username"]!;
        string password = _configuration["HttpClientKeycloakConfig:password"]!;
        string authUri = _configuration["HttpClientKeycloakConfig:AuthUri"]!;

        if (string.IsNullOrEmpty(username))
            throw new KeycloakException("username do keycloak invalido detectado");

        if (string.IsNullOrEmpty(password))
            throw new KeycloakException("password do keycloak invalido detectado");

        if (string.IsNullOrEmpty(authUri))
            throw new KeycloakException("authUri do keycloak invalido detectado");

        var dict = new Dictionary<string, string>
            {
                { "username", username },
                { "password", password },
                { "grant_type", "password" },
                { "client_id", "admin-cli" }
            };

        var req = new HttpRequestMessage(HttpMethod.Post, authUri) { Content = new FormUrlEncodedContent(dict) };
        var res = await _httpClient.SendAsync(req);

        if (res.IsSuccessStatusCode is false)
            throw new KeycloakException($"Erro ao enviar requisição [{res.StatusCode}] -  {await res.Content.ReadAsStringAsync()}");

        var keycloakToken = await res.Content.ReadFromJsonAsync<KeycloakTokenResponse>()
            ??
            throw new KeycloakException($"Erro ao deserializar objeto de resposta com token keycloak: {await res.Content.ReadAsStringAsync()}");

        _httpClient.DefaultRequestHeaders.Authorization =
            new AuthenticationHeaderValue("Bearer", keycloakToken.access_token);
    }

    private string? GetUsersUri() =>
        string.IsNullOrEmpty(_configuration["HttpClientKeycloakConfig:UsersUri"])
            ?
            throw new Exception("UserUri do Keycloak invalido detectado.")
            :
            _configuration["HttpClientKeycloakConfig:UsersUri"];

    private async Task ExlcuirUsuarioKeycloak(string email, string userUri, KeycloakUserResponse keycloakUser)
    {
        var respostaApiDelete = await _httpClient.DeleteAsync(userUri + $"/{keycloakUser.id}");
        if (respostaApiDelete.IsSuccessStatusCode is false)
        {
            var respostaContent = await respostaApiDelete.Content.ReadAsStringAsync();
            throw new Exception($"erro ao enviar requisição de exclusão do usuário {email} no Keycloak {respostaContent}");
        }
    }

    private async Task<KeycloakUserResponse> GetKeycloakUser(string email, string userUri)
    {
        var respostaApi = await _httpClient.GetAsync(userUri + $"?email={email}");
        var keycloakUser = (await respostaApi.Content.ReadAsAsync<List<KeycloakUserResponse>>()).FirstOrDefault();

        if (respostaApi.IsSuccessStatusCode is false)
        {
            var content = await respostaApi.Content.ReadAsStringAsync();
            throw new KeycloakException($"erro de comunicação com Keycloak para usuário: {email} respostaApi: {content}");
        }

        if (keycloakUser is null)
        {
            var content = await respostaApi.Content.ReadAsStringAsync();
            throw new KeycloakException($"usuário não existe na base do Keycloak {email} respostaApi {content}");
        }

        return keycloakUser;
    }
}