namespace TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

public class Investidor
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Email { get; set; }
    public Saldo Saldo { get; set; }

    public void DebitarSaldo(decimal valor) => Saldo.Valor -= valor;
    public void CreditarSaldo(decimal valor) => Saldo.Valor += valor;
}