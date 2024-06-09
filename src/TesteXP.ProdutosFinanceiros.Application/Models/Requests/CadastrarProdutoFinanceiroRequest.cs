namespace TesteXP.ProdutosFinanceiros.Application.Models.Requests;

public class CadastrarProdutoFinanceiroRequest
{
    public string Nome { get; set; }
    public decimal Valor { get; set; }
    public decimal RendimentoDiario { get; set; }
    public DateTime DataVencimento { get; set; }
}