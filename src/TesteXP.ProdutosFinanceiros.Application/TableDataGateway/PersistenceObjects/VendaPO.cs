namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class VendaPO
    {
        public int Id { get; set; }
        public int IdProdutoFinanceiro { get; set; }
        public int IdComprador { get; set; }
        public int IdVendedor { get; set; }
        public DateTime DataVenda { get; set; }
    }
}