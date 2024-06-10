using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Mappers;

public static class ExtratoMapper
{
    public static Extrato ToExtratoEntidade(this ExtratoPO? ext)
    {
        if(ext is null)
            return null!;

        return new Extrato
        {
            DataReferencia = ext.DataReferencia,
            IdProdutoFinanceiro = ext.IdProdutoFinanceiro,
            Rendimento = ext.Rendimento,
            ValorAnterior = ext.ValorAnterior
        };
    }

    public static List<Extrato> ToExtratoEntidade(this List<ExtratoPO> exts) => exts.Select(x => x.ToExtratoEntidade()).ToList();
}