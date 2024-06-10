namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

public static class ProdutoUsuarioTableDataGatewaySql
{
    public static readonly string VINCULAR = @"
        INSERT INTO ProdutoUsuario
            (IdProdutoFinanceiro, IdUsuario)
        VALUES
            (@IdProdutoFinanceiro, @IdUsuario);
    ";

    public static readonly string DESVINCULAR = @"
        DELETE FROM ProdutoUsuario
        WHERE 1=1
            AND IdProdutoFinanceiro = @IdProdutoFinanceiro
            AND IdUsuario = @IdUsuario;
    ";

    public static readonly string CONSULTAR_POR_PRODUTO_ID = @"
        SELECT
            * 
        FROM 
            ProdutoUsuario
        WHERE 1=1
            AND IdProdutoFinanceiro = @IdProdutoFinanceiro;
    ";
}
