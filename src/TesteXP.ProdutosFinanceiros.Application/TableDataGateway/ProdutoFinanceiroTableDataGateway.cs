using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway
{
    public class ProdutoFinanceiroTableDataGateway : BaseTableDataGateway, IProdutoFinanceiroTableDataGateway
    {
        public ProdutoFinanceiroTableDataGateway(IDatabaseConnection connection) : base(connection) { }

        public async Task AtualizarStatus(int status, int id) =>
            await ExecutarComando(ProdutoFinanceiroTableDataGatewaySql.ATUALIZAR_STATUS, new { Status = status, Id = id });

        public async Task<List<ProdutoFinanceiroPO>> Consultar() =>
            await ExecutarConsultaComResultadoLista<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql.CONSULTAR_TODOS);

        public async Task<ProdutoFinanceiroPO?> ConsultarPorId(int id) =>
            await ExecutarConsultaComUmResultado<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql.CONSULTAR_POR_ID, new { Id = id });

        public async Task Cadastrar(ProdutoFinanceiroPO produto) =>
            await ExecutarComando(ProdutoFinanceiroTableDataGatewaySql.CADASTRAR, produto);

        public async Task Atualizar(ProdutoFinanceiroPO produto) =>
            await ExecutarComando(ProdutoFinanceiroTableDataGatewaySql.ATUALIZAR_PRODUTO, produto);
    }
}