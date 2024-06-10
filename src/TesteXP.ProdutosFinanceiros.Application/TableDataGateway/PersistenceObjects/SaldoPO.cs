namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class SaldoPO
    {
        public SaldoPO() {}
        public SaldoPO(int idUsuario)
        {
            IdUsuario = idUsuario;
            Valor = 0;
        }

        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public decimal Valor { get; set; }
    }
}