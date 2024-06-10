namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

public static class ExtratoTableDataGatewaySql
{
    public static readonly string CONSULTAR_ULTIMO_REGISTRO = @"
        SELECT
            *
        FROM
            Extrato
        WHERE 1=1
            AND IdProdutoFinanceiro = @IdProdutoFinanceiro
        ORDER BY 1 DESC
        LIMIT 1;
    ";

    public static readonly string CONSULTAR_EXTRATO = @"
        SELECT
            *
        FROM
            Extrato
        WHERE 1=1
            AND IdProdutoFinanceiro = @IdProdutoFinanceiro
        ORDER BY 1;
    ";

    public static readonly string CONSULTAR_EXTRATO_RECENTE = @"
        SELECT
            prd.Id as ProdutoId,
            prd.Nome as NomeProduto,
            prd.Valor as ValorInicialProduto,
            ext.ValorAnterior,
            ext.Rendimento,
            ext.DataReferencia
        FROM 
            ProdutoFinanceiro prd
        JOIN 
            ProdutoUsuario pru
                ON pru.IdProdutoFinanceiro = prd.Id
        JOIN
            Extrato ext
                ON ext.IdProdutoFinanceiro = pru.IdProdutoFinanceiro
        WHERE 1=1
            AND pru.IdUsuario = @IdUsuario
        ORDER BY 1 DESC
        LIMIT 20;
    ";

    public static readonly string INSERIR = @"
        INSERT INTO Extrato
            (IdProdutoFinanceiro, ValorAnterior, Rendimento, DataReferencia)
        VALUES
            (@IdProdutoFinanceiro, @ValorAnterior, @Rendimento, @DataReferencia);
    ";
}