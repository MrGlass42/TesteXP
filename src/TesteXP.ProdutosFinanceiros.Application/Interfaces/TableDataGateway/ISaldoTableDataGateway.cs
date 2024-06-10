using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface ISaldoTableDataGateway
{
    Task Iniciar(SaldoPO saldo);
    Task AtualizarSaldo(decimal valor, int saldoId);
    Task<SaldoPO?> ConsultarSaldoPorUsuario(int idUsuario);
}
