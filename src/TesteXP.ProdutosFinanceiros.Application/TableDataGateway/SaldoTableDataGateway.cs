using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway;

public class SaldoTableDataGateway : BaseTableDataGateway, ISaldoTableDataGateway
{
    public SaldoTableDataGateway(IDatabaseConnection connection) : base(connection) { }
    public async Task AtualizarSaldo(decimal valor, int saldoId) =>
        await ExecutarComando(SaldoTableDataGatewaySql.ATUALIZAR_SALDO, new { Valor = valor, Id = saldoId });

    public async Task<SaldoPO?> ConsultarSaldoPorUsuario(int idUsuario) =>
        await ExecutarConsultaComUmResultado<SaldoPO>(SaldoTableDataGatewaySql.CONSULTAR_POR_ID_USUARIO, new { IdUsuario = idUsuario });

    public async Task Iniciar(SaldoPO saldo) =>
        saldo.Id = await ExecutarComando(SaldoTableDataGatewaySql.CADASTRAR, saldo);
}