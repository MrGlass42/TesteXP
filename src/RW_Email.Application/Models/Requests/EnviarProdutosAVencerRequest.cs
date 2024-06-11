namespace RW_Email.Application.Models.Requests
{
    public class EnviarProdutosAVencerRequest
    {
        public IEnumerable<string> Emails {get;set;}
        public IEnumerable<Produto> Produtos {get;set;}
    }

    public class Produto
    {
        public string Nome { get; set; }
        public DateTime DataVencimento { get; set; }
    }
}