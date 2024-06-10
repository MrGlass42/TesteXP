namespace TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

public class Extrato
{
    public int IdProdutoFinanceiro { get; set; }
    public decimal ValorAnterior { get; set; }
    public decimal Rendimento { get; set; }
    public DateTime DataReferencia { get; set; }
}