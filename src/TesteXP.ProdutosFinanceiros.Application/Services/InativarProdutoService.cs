using TesteXP.ProdutosFinanceiros.Application.Interfaces;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class InativarProdutoService : IInativarProdutoService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;

        public InativarProdutoService(IProdutoFinanceiroRepository produtoFinanceiroRepository)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
        }

        public async Task Inativar(int id) => await _produtoFinanceiroRepository.Inativar(id);
    }
}