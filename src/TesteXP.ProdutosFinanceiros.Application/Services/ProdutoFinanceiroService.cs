using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
using TesteXP.ProdutosFinanceiros.Application.Models;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Services
{
    public class ProdutoFinanceiroService : IProdutoFinanceiroService
    {
        private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
        private readonly ICustomValidator

        public Task Ativar(int id)
        {
            throw new NotImplementedException();
        }

        public Task Atualizar(CadastrarProdutoFinanceiroRequest request)
        {
            throw new NotImplementedException();
        }

        public Task Cadastrar(CadastrarProdutoFinanceiroRequest request)
        {
            throw new NotImplementedException();
        }

        public Task<ConsultarProdutosResponse> Consultar()
        {
            throw new NotImplementedException();
        }

        public Task<ProdutoFinanceiro> ConsultarPorId()
        {
            throw new NotImplementedException();
        }

        public Task Inativar(int id)
        {
            throw new NotImplementedException();
        }
    }
}