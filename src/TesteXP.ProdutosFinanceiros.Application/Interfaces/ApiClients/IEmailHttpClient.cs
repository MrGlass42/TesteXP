using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.ApiClients;

public interface IEmailHttpClient
{
    Task Enviar(EnviarEmailRequest request);
}
