namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects
{
    public class UsuarioPO
    {
        public UsuarioPO() { }

        public int Id { get; set; }
        public string Nome { get; set; }
        public int Tipo { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public int Status { get; set; }
    }
}