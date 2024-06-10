namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

public static class SaldoTableDataGatewaySql
{
    public static readonly string CADASTRAR = @"
        INSERT INTO SALDO
            (Valor, IdUsuario)
        VALUES
            (@Valor, @IdUsuario);
    ";

    public static readonly string ATUALIZAR_SALDO = @"
        UPDATE SALDO
            SET Valor = @Valor
        WHERE 1=1
            AND Id = @Id;
    ";

    public static readonly string CONSULTAR_POR_ID_USUARIO = @"
        SELECT
            *
        FROM
            Saldo
        WHERE 1=1
            AND IdUsuario = @IdUsuario;
    ";
}