using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class ConsultarProdutoIdService : IConsultarProdutoPorIdService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;

        public ConsultarProdutoIdService(IProdutoFinanceiroRepository produtoFinanceiroRepository)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
        }

        public async Task<ProdutoFinanceiro> ConsultarPorId(int id) => await _produtoFinanceiroRepository.ConsultarPorId(id);
    }
}