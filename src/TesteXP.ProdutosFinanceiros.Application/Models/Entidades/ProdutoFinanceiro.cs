namespace TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

public class ProdutoFinanceiro
{
    public ProdutoFinanceiro() {}
    public ProdutoFinanceiro(string nome, decimal valor,decimal rendimentoDiario, DateTime dataVencimento)
    {
        RendimentoDiario = rendimentoDiario;
        DataVencimento = dataVencimento;
        Status = EStatusProduto.Ativo;
        DataCadastro = DateTime.Now;
        DisponivelParaVenda = true;
        Valor = valor;
        Nome = nome;
    }


    public int Id { get; set; }
    public EStatusProduto Status { get; set; }
    public string Nome { get; set; }
    public decimal Valor { get; set; }
    public bool DisponivelParaVenda { get; set; }
    public decimal RendimentoDiario { get; set; }
    public DateTime DataCadastro { get; set; }
    public DateTime DataVencimento { get; set; }
}
