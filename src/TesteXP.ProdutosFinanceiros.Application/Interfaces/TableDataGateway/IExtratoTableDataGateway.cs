using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface IExtratoTableDataGateway
{
    Task<ExtratoPO?> ConsultarUltimoRegistro(int produtoId);
    Task<List<ExtratoPO>> ConsultarExtrato(int produtoId);
    Task InserirRegistro(ExtratoPO registro);
}
