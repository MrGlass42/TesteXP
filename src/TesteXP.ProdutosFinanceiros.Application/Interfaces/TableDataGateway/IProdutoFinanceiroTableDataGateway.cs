using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IProdutoFinanceiroTableDataGateway
    {
        Task Cadastrar(ProdutoFinanceiroPO produto);
        Task Atualizar(ProdutoFinanceiroPO produto);
        Task<List<ProdutoFinanceiroPO>> Consultar();
        Task<ProdutoFinanceiroPO?> ConsultarPorId(int id);
        Task AtualizarStatus(int status, int id);
    }
}