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
            FROM    
                ProdutoFinanceiro
            WHERE 1=1
                AND Id = @Id;
        ";

        public static readonly string CONSULTAR_PRODUTOS_DISPONIVEIS_PRA_VENDA = @"
            SELECT
                *
            FROM 
                ProdutoFinanceiro
            WHERE 1=1
                AND Status = 0
                AND DisponivelParaVenda = TRUE;
        ";

        public static readonly string CONSULTAR_PRODUTOS_DE_UM_USUARIO = @"
            SELECT
                prd.*
            FROM 
                ProdutoFinanceiro prd
            JOIN 
                ProdutoUsuario pru
                    ON pru.IdProdutoFinanceiro = prd.Id
            WHERE 1=1
                AND pru.IdUsuario = @IdUsuario;
        ";

        public static readonly string CONSULTAR_PRODUTOS_PROXIMOS_DO_VENCIMENTO = @"
            SELECT
                *
            FROM 
                ProdutoFinanceiro
            WHERE 1=1
                AND DataVencimento BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL @QtdeDias DAY);
        ";

    }
}