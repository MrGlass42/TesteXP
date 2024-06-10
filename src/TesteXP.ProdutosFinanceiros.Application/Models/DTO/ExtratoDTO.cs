namespace TesteXP.ProdutosFinanceiros.Application.Models.DTO;

public class ExtratoDTO
{
    public int ProdutoId { get; set; }
    public string NomeProduto { get; set; }
    public decimal ValorInicialProduto { get; set; }
    public decimal ValorAnterior { get; set; }
    public decimal Rendimento { get; set; }
    public DateTime DataReferencia { get; set; }
}