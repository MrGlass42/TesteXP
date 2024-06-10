using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Models.Responses;

public class ExtratoResponse
{
    public string Nome { get; set; }
    public string Email { get; set; }
    public decimal Saldo { get; set; }
    public List<ProdutoResponse> Produtos { get; set; }
}

public class ProdutoResponse
{
    public int IdProduto { get; set; }
    public decimal ValorAtual { get; set; }
    public string Mensagem { get; set; }
    public string NomeProduto { get; set; }
    public IEnumerable<Extrato> HistoricoRendimento { get; set; }
}
