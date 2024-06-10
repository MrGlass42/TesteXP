using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface IVendaTableDataGateway
{
    Task Inserir(VendaPO venda);
}
