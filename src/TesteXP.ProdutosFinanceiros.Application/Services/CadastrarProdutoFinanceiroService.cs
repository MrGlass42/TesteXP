using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class CadastrarProdutoFinanceiroService : ICadastrarProdutoFinanceiroService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
        private readonly ICustomValidator<CadastrarProdutoFinanceiroRequest> _validator;

        public CadastrarProdutoFinanceiroService(
            IProdutoFinanceiroRepository produtoFinanceiroRepository, 
            ICustomValidator<CadastrarProdutoFinanceiroRequest> validator)
        {
            _produtoFinanceiroRepository = produtoFinanceiroRepository;
            _validator = validator;
        }

        public async Task Executar(CadastrarProdutoFinanceiroRequest request)
        {
            _validator.ExecuteValidation(request);

            var produto = new ProdutoFinanceiro(request.Nome, request.Valor, request.RendimentoDiario, request.DataVencimento);
            
            await _produtoFinanceiroRepository.Cadastrar(produto);
        }
    }
}