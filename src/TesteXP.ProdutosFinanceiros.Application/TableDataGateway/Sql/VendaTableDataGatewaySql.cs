namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql;

public static class VendaTableDataGatewaySql
{
    public static readonly string INSERIR = @"
        INSERT INTO Venda
            (IdProdutoFinanceiro, IdComprador, IdVendedor, Valor, DataVenda)
        VALUES
            (@IdProdutoFinanceiro, @IdComprador, @IdVendedor, @Valor, @DataVenda);
    ";
}