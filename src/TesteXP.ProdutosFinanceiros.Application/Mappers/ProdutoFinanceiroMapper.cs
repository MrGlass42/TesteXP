using TesteXP.ProdutosFinanceiros.Application.Models;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Mappers;

public static class ProdutoFinanceiroMapper
{
    public static ProdutoFinanceiro ToProdutoFinanceiroEntidade(this ProdutoFinanceiroPO? po)
    {
        if (po is null)
            return null!;

        return new ProdutoFinanceiro
        {
            Id = po.Id,
            DataCadastro = po.DataCadastro,
            DataVencimento = po.DataVencimento,
            DisponivelParaVenda = po.DisponivelParaVenda,
            Nome = po.Nome,
            RendimentoDiario = po.RendimentoDiario,
            Status = (EStatusProduto)po.Status,
            Valor = po.Valor
        };
    }

    public static List<ProdutoFinanceiro> ToProdutoFinanceiroEntidade(this List<ProdutoFinanceiroPO> pos) =>
        pos.Select(x => x.ToProdutoFinanceiroEntidade()).ToList();

    public static ProdutoFinanceiroPO ToProdutoFinanceiroPO(this ProdutoFinanceiro? ent)
    {
        if (ent is null)
            return null!;

        return new ProdutoFinanceiroPO
        {
            Id = ent.Id,
            DataCadastro = ent.DataCadastro,
            DataVencimento = ent.DataVencimento,
            DisponivelParaVenda = ent.DisponivelParaVenda,
            Nome = ent.Nome,
            RendimentoDiario = ent.RendimentoDiario,
            Status = (int)ent.Status,
            Valor = ent.Valor
        };
    }

    public static List<ProdutoFinanceiroPO> ToProdutoFinanceiroPO(this List<ProdutoFinanceiro> ents) =>
        ents.Select(x => x.ToProdutoFinanceiroPO()).ToList();
}
