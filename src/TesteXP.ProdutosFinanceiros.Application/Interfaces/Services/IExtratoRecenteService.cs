using TesteXP.ProdutosFinanceiros.Application.Models.Responses;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

public interface IExtratoRecenteService
{
    Task<ExtratoResponse> Consultar(string email);
}
