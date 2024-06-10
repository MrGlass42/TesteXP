using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway;

public class ProdutoUsuarioTableDataGateway : BaseTableDataGateway, IProdutoUsuarioTableDataGateway
{
    public ProdutoUsuarioTableDataGateway(IDatabaseConnection connection) : base(connection) { }

    public async Task<ProdutoUsuarioPO?> ConsultarPorProdutoId(int produtoId) =>
        await ExecutarConsultaComUmResultado<ProdutoUsuarioPO>(ProdutoUsuarioTableDataGatewaySql.CONSULTAR_POR_PRODUTO_ID, new {IdProdutoFinanceiro = produtoId});

    public async Task Desvincular(int idProdutoFinanceiro, int idUsuario) =>
        await ExecutarComando(ProdutoUsuarioTableDataGatewaySql.DESVINCULAR, new {IdProdutoFinanceiro = idProdutoFinanceiro, IdUsuario = idProdutoFinanceiro });

    public async Task Vincular(ProdutoUsuarioPO produtoUsuario) =>
        await ExecutarComando(ProdutoUsuarioTableDataGatewaySql.VINCULAR, produtoUsuario);
}