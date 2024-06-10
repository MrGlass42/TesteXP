namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class ProdutoUsuarioPO
    {
        public ProdutoUsuarioPO() {}
        public ProdutoUsuarioPO(int idProdutoFinanceiro, int idUsuario)
        {
            IdProdutoFinanceiro = idProdutoFinanceiro;
            IdUsuario = idUsuario;
        }

        public int Id { get; set; }
        public int IdProdutoFinanceiro { get; set; }
        public int IdUsuario { get; set; }
    }
}