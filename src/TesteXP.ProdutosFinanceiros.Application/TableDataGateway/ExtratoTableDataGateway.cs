using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Models.DTO;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway;

public class ExtratoTableDataGateway : BaseTableDataGateway, IExtratoTableDataGateway
{
    public ExtratoTableDataGateway(IDatabaseConnection connection) : base(connection) { }

    public async Task<List<ExtratoPO>> ConsultarExtrato(int produtoId) =>
        await ExecutarConsultaComResultadoLista<ExtratoPO>(ExtratoTableDataGatewaySql.CONSULTAR_EXTRATO, new { IdProdutoFinanceiro = produtoId});

    public async Task<List<ExtratoDTO>> ConsultarExtratoRecente(int usuarioId)=>
        await ExecutarConsultaComResultadoLista<ExtratoDTO>(ExtratoTableDataGatewaySql.CONSULTAR_EXTRATO_RECENTE, new { IdUsuario = usuarioId});

    public async Task<ExtratoPO?> ConsultarUltimoRegistro(int produtoId) =>
        await ExecutarConsultaComUmResultado<ExtratoPO>(ExtratoTableDataGatewaySql.CONSULTAR_ULTIMO_REGISTRO, new { IdProdutoFinanceiro = produtoId});

    public async Task InserirRegistro(ExtratoPO registro) =>
        await ExecutarComando(ExtratoTableDataGatewaySql.INSERIR, registro);
}
