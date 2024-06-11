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

        public async Task<List<ProdutoFinanceiroPO>> ConsultarProdutosDisponiveisPraVenda() =>
            await ExecutarConsultaComResultadoLista<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql.CONSULTAR_PRODUTOS_DISPONIVEIS_PRA_VENDA);

        public async Task<ProdutoFinanceiroPO?> ConsultarPorId(int id) =>
            await ExecutarConsultaComUmResultado<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql.CONSULTAR_POR_ID, new { Id = id });

        public async Task Cadastrar(ProdutoFinanceiroPO produto) =>
            await ExecutarComando(ProdutoFinanceiroTableDataGatewaySql.CADASTRAR, produto);

        public async Task Atualizar(ProdutoFinanceiroPO produto) =>
            await ExecutarComando(ProdutoFinanceiroTableDataGatewaySql.ATUALIZAR_PRODUTO, produto);

        public async Task<List<ProdutoFinanceiroPO>> ConsultarProdutosDeUmUsuario(int usuarioId) =>
            await ExecutarConsultaComResultadoLista<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql
                .CONSULTAR_PRODUTOS_DE_UM_USUARIO, new { IdUsuario = usuarioId });

        public async Task<List<ProdutoFinanceiroPO>> ConsultarProdutosProximosDoVencimento(int qtdeDias) =>
            await ExecutarConsultaComResultadoLista<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql
                .CONSULTAR_PRODUTOS_PROXIMOS_DO_VENCIMENTO, new {QtdeDias = qtdeDias});

        public async Task<List<ProdutoFinanceiroPO>> ConsultarTodosOsProdutos()=>
            await ExecutarConsultaComResultadoLista<ProdutoFinanceiroPO>(ProdutoFinanceiroTableDataGatewaySql.CONSULTAR_TODOS_PRODUTOS);
    }
}