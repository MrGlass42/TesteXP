using TesteXP.ProdutosFinanceiros.Application.Models.Enum;

namespace TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

public class ProdutoFinanceiro
{
    public ProdutoFinanceiro() { }
    public ProdutoFinanceiro(string nome, decimal valorInicial, decimal rendimentoDiario, DateTime dataVencimento)
    {
        RendimentoDiario = rendimentoDiario;
        DataVencimento = dataVencimento;
        Status = EStatusProduto.Ativo;
        DataCadastro = DateTime.Now;
        DisponivelParaVenda = true;
        ValorInicial = valorInicial;
        Nome = nome;
    }


    public int Id { get; set; }
    public EStatusProduto Status { get; set; }
    public string Nome { get; set; }
    public decimal ValorInicial { get; set; }
    public decimal ValorAtual { get; set; }
    public bool DisponivelParaVenda { get; set; }
    public decimal RendimentoDiario { get; set; }
    public DateTime DataCadastro { get; set; }
    public DateTime DataVencimento { get; set; }
}
