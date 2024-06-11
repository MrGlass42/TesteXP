using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class AtualizarProdutoFinanceiroService : IAtualizarProdutoFinanceiroService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
        private readonly ICustomValidator<AtualizarProdutoFinanceiroRequest> _validator;

        public AtualizarProdutoFinanceiroService(IProdutoFinanceiroRepository produtoFinanceiroRepository, ICustomValidator<AtualizarProdutoFinanceiroRequest> validator)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
            _validator = validator;
        }

        public async Task Atualizar(AtualizarProdutoFinanceiroRequest request)
        {
            _validator.ExecuteValidation(request);

            var produto = new ProdutoFinanceiro
            {
                Id = request.Id,
                DataVencimento = request.DataVencimento,
                DisponivelParaVenda = request.DisponivelParaVenda,
                Nome = request.Nome,
                Status = request.Status,
                ValorInicial = request.Valor,
                RendimentoDiario = request.RendimentoDiario
            };
            
            await _produtoFinanceiroRepository.Atualizar(produto);
        }
    }
}