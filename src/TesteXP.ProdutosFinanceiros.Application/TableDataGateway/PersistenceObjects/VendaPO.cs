namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class VendaPO
    {
        public VendaPO() {}
        public VendaPO(decimal valor, int idProdutoFinanceiro, int idComprador, int? idVendedor)
        {
            Valor = valor;
            IdProdutoFinanceiro = idProdutoFinanceiro;
            IdComprador = idComprador;
            IdVendedor = idVendedor;
            DataVenda = DateTime.Now;
        }

        public int Id { get; set; }
        public decimal Valor { get; set; }
        public int IdProdutoFinanceiro { get; set; }
        public int IdComprador { get; set; }
        public int? IdVendedor { get; set; }
        public DateTime DataVenda { get; set; }
    }
}