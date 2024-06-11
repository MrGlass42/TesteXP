using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IProdutoFinanceiroTableDataGateway
    {
        Task<List<ProdutoFinanceiroPO>> ConsultarProdutosProximosDoVencimento(int qtdeDias);
        Task<List<ProdutoFinanceiroPO>> ConsultarProdutosDeUmUsuario(int usuarioId);
        Task<List<ProdutoFinanceiroPO>> ConsultarProdutosDisponiveisPraVenda();
        Task<List<ProdutoFinanceiroPO>> ConsultarTodosOsProdutos();
        Task<ProdutoFinanceiroPO?> ConsultarPorId(int id);
        Task Cadastrar(ProdutoFinanceiroPO produto);
        Task Atualizar(ProdutoFinanceiroPO produto);
        Task AtualizarStatus(int status, int id);
    }
}