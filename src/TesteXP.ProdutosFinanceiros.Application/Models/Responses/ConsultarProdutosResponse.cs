using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;

namespace TesteXP.ProdutosFinanceiros.Application.Models.Response;

public class ConsultarProdutosResponse
{
    public ConsultarProdutosResponse(List<ProdutoFinanceiro> produtos)
    {
        Produtos = produtos;
    }

    public List<ProdutoFinanceiro> Produtos {get;set;}
}
