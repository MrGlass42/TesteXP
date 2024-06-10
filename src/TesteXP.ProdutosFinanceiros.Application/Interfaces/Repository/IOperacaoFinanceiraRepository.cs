using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;

public interface IOperacaoFinanceiraRepository
{
    void RegistrarCompra(Investidor comprador, int idProdutoFinanceiro, decimal valor, Investidor? vendedor);
}