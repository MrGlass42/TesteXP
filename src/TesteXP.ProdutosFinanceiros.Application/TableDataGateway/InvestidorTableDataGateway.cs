using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway;

public class InvestidorTableDataGateway : BaseTableDataGateway, IInvestidorTableDataGateway
{
    public InvestidorTableDataGateway(IDatabaseConnection connection) : base(connection) { }

    public async Task<UsuarioPO?> ConsultarInvestidorPorEmail(string email) =>
        await ExecutarConsultaComUmResultado<UsuarioPO>(InvestidorTableDataGatewaySql.CONSULTAR_POR_EMAIL, new { Email = email });

    public async Task<UsuarioPO?> ConsultarInvestidorPorId(int id) =>
        await ExecutarConsultaComUmResultado<UsuarioPO>(InvestidorTableDataGatewaySql.CONSULTAR_POR_ID, new { Id = id });

    public async Task<List<UsuarioPO>> ConsultarPorAdministradores() =>
        await ExecutarConsultaComResultadoLista<UsuarioPO>(InvestidorTableDataGatewaySql.CONSULTAR_ADMINS);

}