using TesteXP.ProdutosFinanceiros.Application.Models;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

public interface IProdutoFinanceiroService
{
    Task Cadastrar(CadastrarProdutoFinanceiroRequest request);
    Task Atualizar(CadastrarProdutoFinanceiroRequest request);
    Task<ConsultarProdutosResponse> Consultar();
    Task<ProdutoFinanceiro> ConsultarPorId();
    Task Ativar(int id);
    Task Inativar(int id);
}