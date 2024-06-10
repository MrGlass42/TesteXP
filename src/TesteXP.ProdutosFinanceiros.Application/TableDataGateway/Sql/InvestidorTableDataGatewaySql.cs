namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

public static class InvestidorTableDataGatewaySql
{
    public static readonly string CONSULTAR_POR_EMAIL = @"
        SELECT
            *
        FROM 
            Usuario
        WHERE 1=1
            AND Email = @Email;
    ";

    public static readonly string CONSULTAR_POR_ID = @"
        SELECT
            *
        FROM 
            Usuario
        WHERE 1=1
            AND Id = @Id;
    ";
}
