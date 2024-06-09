using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class ConsultarProdutosDisponiveisPraVenda : IConsultarProdutosDisponiveisPraVenda
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;

        public ConsultarProdutosDisponiveisPraVenda(IProdutoFinanceiroRepository produtoFinanceiroRepository)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
        }

        public async Task<List<ProdutoFinanceiro>> Consultar() => await _produtoFinanceiroRepository.ConsultarProdutosDisponiveisPraVenda();
    }
}