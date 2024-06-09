using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IProdutoFinanceiroRepository
    {
        Task<ProdutoFinanceiro> ConsultarPorId(int id);
        Task<List<ProdutoFinanceiro>> Consultar();
        Task Cadastrar(ProdutoFinanceiro produto);
        Task Atualizar(ProdutoFinanceiro produto);
        Task Ativar(int id);
        Task Inativar(int id);
    }
}