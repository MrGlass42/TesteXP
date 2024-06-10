using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway;

public class VendaTableDataGateway : BaseTableDataGateway, IVendaTableDataGateway
{
    public VendaTableDataGateway(IDatabaseConnection connection) : base(connection) { }
    public async Task Inserir(VendaPO venda) =>
        await ExecutarComando(VendaTableDataGatewaySql.INSERIR, venda);
}