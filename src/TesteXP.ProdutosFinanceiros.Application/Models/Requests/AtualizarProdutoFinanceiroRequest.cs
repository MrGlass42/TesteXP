using TesteXP.ProdutosFinanceiros.Application.Models.Enum;

namespace TesteXP.ProdutosFinanceiros.Application.Models.Requests;

public class AtualizarProdutoFinanceiroRequest
{
    public int Id { get; set; }
    public EStatusProduto Status { get; set; }
    public string Nome { get; set; }
    public decimal Valor { get; set; }
    public bool DisponivelParaVenda { get; set; }
    public decimal RendimentoDiario { get; set; }
    public DateTime DataVencimento { get; set; }
}
