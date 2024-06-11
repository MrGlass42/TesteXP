using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface IInvestidorTableDataGateway
{
    Task<UsuarioPO?> ConsultarInvestidorPorEmail(string email);
    Task<List<UsuarioPO>> ConsultarPorAdministradores();
    Task<UsuarioPO?> ConsultarInvestidorPorId(int id);
}
