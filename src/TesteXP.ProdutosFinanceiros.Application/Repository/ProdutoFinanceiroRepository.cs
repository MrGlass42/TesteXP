using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Mappers;
using TesteXP.ProdutosFinanceiros.Application.Models;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Repository;

public class ProdutoFinanceiroRepository : IProdutoFinanceiroRepository
{
    private readonly IProdutoFinanceiroTableDataGateway _produtoFinanceiroTableDataGateway;

    public ProdutoFinanceiroRepository(IProdutoFinanceiroTableDataGateway produtoFinanceiroTableDataGateway)
    {
        _produtoFinanceiroTableDataGateway = produtoFinanceiroTableDataGateway;
    }

    public async Task Ativar(int id) =>
        await _produtoFinanceiroTableDataGateway.AtualizarStatus((int)EStatusProduto.Ativo, id);

    public async Task Inativar(int id) =>
        await _produtoFinanceiroTableDataGateway.AtualizarStatus((int)EStatusProduto.Inativo, id);

    public async Task Atualizar(ProdutoFinanceiro produto) =>
        await _produtoFinanceiroTableDataGateway.Atualizar(produto.ToProdutoFinanceiroPO());

    public async Task Cadastrar(ProdutoFinanceiro produto) =>
        await _produtoFinanceiroTableDataGateway.Cadastrar(produto.ToProdutoFinanceiroPO());

    public async Task<List<ProdutoFinanceiro>> Consultar() =>
        (await _produtoFinanceiroTableDataGateway.Consultar()).ToProdutoFinanceiroEntidade();

    public async Task<ProdutoFinanceiro> ConsultarPorId(int id) =>
        (await _produtoFinanceiroTableDataGateway.ConsultarPorId(id)).ToProdutoFinanceiroEntidade();
}
