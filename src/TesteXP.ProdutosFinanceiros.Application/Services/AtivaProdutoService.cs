using TesteXP.ProdutosFinanceiros.Application.Interfaces;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class AtivarProdutoService : IAtivarProdutoService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;

        public AtivarProdutoService(IProdutoFinanceiroRepository produtoFinanceiroRepository)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
        }

        public async Task Ativar(int id) => await _produtoFinanceiroRepository.Ativar(id);
    }
}