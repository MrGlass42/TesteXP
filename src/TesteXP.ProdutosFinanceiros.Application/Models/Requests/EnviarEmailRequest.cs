namespace TesteXP.ProdutosFinanceiros.Application.Models.Requests
{
    public class EnviarEmailRequest
    {
        public EnviarEmailRequest(IEnumerable<string> emails, IEnumerable<ProdutoParaEmail> produtos)
        {
            Emails = emails;
            Produtos = produtos;
        }


        public IEnumerable<string> Emails { get; set; }
        public IEnumerable<ProdutoParaEmail> Produtos { get; set; }
    }

    public class ProdutoParaEmail
    {
        public ProdutoParaEmail(string nome, DateTime dataVencimento)
        {
            Nome = nome;
            DataVencimento = dataVencimento;
        }


        public string Nome { get; set; }
        public DateTime DataVencimento { get; set; }
    }
}