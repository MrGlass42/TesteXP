namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class ProdutoFinanceiroPO
    {
        public int Id { get; set; }
        public int Status { get; set; }
        public string Nome { get; set; }
        public decimal Valor { get; set; }
        public bool DisponivelParaVenda { get; set; }
        public decimal RendimentoDiario { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataVencimento { get; set; }
    }
}