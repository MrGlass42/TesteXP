namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class ExtratoPO
    {
        public int Id { get; set; }
        public int IdProdutoFinanceiro { get; set; }
        public decimal ValorAnterior { get; set; }
        public decimal Rendimento { get; set; }
        public DateTime DataReferencia { get; set; }
    }
}