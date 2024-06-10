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

    public static readonly string INSERIR = @"
        INSERT INTO Extrato
            (IdProdutoFinanceiro, ValorAnterior, Rendimento, DataReferencia)
        VALUES
            (@IdProdutoFinanceiro, @ValorAnterior, @Rendimento, @DataReferencia);
    ";
}