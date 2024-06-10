using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Mappers;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.Models.Enum;

namespace TesteXP.ProdutosFinanceiros.Application.Repository;

public class ProdutoFinanceiroRepository : IProdutoFinanceiroRepository
{
    private readonly IProdutoFinanceiroTableDataGateway _produtoFinanceiroTableDataGateway;
    private readonly IExtratoTableDataGateway _extratoTableDataGateway;

    public ProdutoFinanceiroRepository(
        IProdutoFinanceiroTableDataGateway produtoFinanceiroTableDataGateway, 
        IExtratoTableDataGateway extratoTableDataGateway)
    {
        _produtoFinanceiroTableDataGateway = produtoFinanceiroTableDataGateway;
        _extratoTableDataGateway = extratoTableDataGateway;

    }

    public async Task Ativar(int id) =>
        await _produtoFinanceiroTableDataGateway.AtualizarStatus((int)EStatusProduto.Ativo, id);

    public async Task Inativar(int id) =>
        await _produtoFinanceiroTableDataGateway.AtualizarStatus((int)EStatusProduto.Inativo, id);

    public async Task Atualizar(ProdutoFinanceiro produto) =>
        await _produtoFinanceiroTableDataGateway.Atualizar(produto.ToProdutoFinanceiroPO());

    public async Task Cadastrar(ProdutoFinanceiro produto) =>
        await _produtoFinanceiroTableDataGateway.Cadastrar(produto.ToProdutoFinanceiroPO());

    public async Task<List<ProdutoFinanceiro>> ConsultarProdutosDisponiveisPraVenda() =>
        (await _produtoFinanceiroTableDataGateway.ConsultarProdutosDisponiveisPraVenda()).ToProdutoFinanceiroEntidade();

    public async Task<ProdutoFinanceiro> ConsultarPorId(int id) =>
        (await _produtoFinanceiroTableDataGateway.ConsultarPorId(id)).ToProdutoFinanceiroEntidade();

    public async Task<decimal> ConsultarValorAtualProduto(int produtoId)
    {
        var registro = await _extratoTableDataGateway.ConsultarUltimoRegistro(produtoId);

        if(registro is not null)
            return registro.ValorAnterior * registro.Rendimento;
        else 
        {
            var produto = await ConsultarPorId(produtoId);
            return produto.Valor;
        }
    }
}