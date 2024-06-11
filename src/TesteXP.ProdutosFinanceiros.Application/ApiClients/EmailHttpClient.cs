using Microsoft.Extensions.Configuration;
using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.ApiClients;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.ApiClients;

public class EmailHttpClient : IEmailHttpClient
{
    private readonly HttpClient _httpClient;

    public EmailHttpClient(IHttpClientFactory httpClientFactory, IConfiguration configuration)
    {
        string baseUrl = configuration["EmailApiUrl"]!;

        if(string.IsNullOrEmpty(baseUrl))
            throw new EmalHttpClientException("não foi encontrada configuração de url para email http client");

        _httpClient = httpClientFactory.CreateClient();
        _httpClient.BaseAddress = new Uri(baseUrl);
    }

    public async Task Enviar(EnviarEmailRequest request)
    {
        string rota = "/Email";

        var result = await _httpClient.PostAsJsonAsync(rota, request);

        if(result.IsSuccessStatusCode is false)
            throw new EmalHttpClientException($"houve um erro ao tentar enviar o email, status code: {result.StatusCode}");
    }
}