using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IProdutoFinanceiroRepository
    {
        Task<List<ProdutoFinanceiro>> ConsultarProdutosDisponiveisPraVenda();
        Task<ProdutoFinanceiro> ConsultarPorId(int id);
        Task Cadastrar(ProdutoFinanceiro produto);
        Task Atualizar(ProdutoFinanceiro produto);
        Task Ativar(int id);
        Task Inativar(int id);
    }
}