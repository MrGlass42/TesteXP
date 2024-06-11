using TesteXP.ProdutosFinanceiros.Application.Models.DTO;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface IProdutoFinanceiroRepository
    {
        Task<List<ProdutoFinanceiro>> ConsultarProdutosDeUmInvestidor(int usuarioId);
        Task<List<ExtratoDTO>> ConsultarExtratoRecenteDoProduto(int usuarioId);
        Task<List<ProdutoFinanceiro>> ConsultarProdutosDisponiveisPraVenda();
        Task<List<ProdutoFinanceiro>> ConsultarTodosOsProdutos();
        Task<decimal> ConsultarValorAtualProduto(int produtoId);
        Task<ProdutoFinanceiro> ConsultarPorId(int id);
        Task Cadastrar(ProdutoFinanceiro produto);
        Task Atualizar(ProdutoFinanceiro produto);
        Task Ativar(int id);
        Task Inativar(int id);
    }
}