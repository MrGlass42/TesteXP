namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.Sql
{
    public static class ProdutoFinanceiroTableDataGatewaySql
    {
        public static readonly string CADASTRAR = @"
            INSERT INTO ProdutoFinanceiro
                (Nome, DisponivelParaVenda, Valor, Status, RendimentoDiario, DataCadastro, DataVencimento)
            VALUES
                (@Nome, @DisponivelParaVenda, @Valor, @Status, @RendimentoDiario, @DataCadastro, @DataVencimento);
        ";

        public static readonly string ATUALIZAR_PRODUTO = @"
            UPDATE ProdutoFinanceiro
                SET Nome = @Nome,
                DisponivelParaVenda = @DisponivelParaVenda,
                Valor = @Valor,
                Status = @Status,
                RendimentoDiario = @RendimentoDiario,
                DataVencimento = @DataVencimento
            WHERE 1=1
                AND Id = @Id;
        ";

        public static readonly string ATUALIZAR_STATUS = @"
            UPDATE ProdutoFinanceiro
                SET Status = @Status
            WHERE 1=1
                AND Id = @Id;
        ";

        public static readonly string CONSULTAR_POR_ID = @"
            SELECT
                *
                ProdutoFinanceiro
            WHERE 1=1
                AND Id = @Id;
        ";

        public static readonly string CONSULTAR_TODOS = @"
            SELECT
                *
                ProdutoFinanceiro
            WHERE 1=1;
        ";
    }
}