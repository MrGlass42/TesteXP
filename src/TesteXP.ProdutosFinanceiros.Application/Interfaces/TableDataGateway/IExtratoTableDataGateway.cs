using TesteXP.ProdutosFinanceiros.Application.Models.DTO;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface IExtratoTableDataGateway
{
    Task<List<ExtratoDTO>> ConsultarExtratoRecente(int usuarioId);
    Task<ExtratoPO?> ConsultarUltimoRegistro(int produtoId);
    Task<List<ExtratoPO>> ConsultarExtrato(int produtoId);
    Task InserirRegistro(ExtratoPO registro);
}
