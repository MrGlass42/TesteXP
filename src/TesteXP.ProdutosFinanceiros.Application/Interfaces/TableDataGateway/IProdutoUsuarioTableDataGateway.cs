using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;

public interface IProdutoUsuarioTableDataGateway
{
    Task<ProdutoUsuarioPO?> ConsultarPorProdutoId(int produtoId);
    Task Vincular(ProdutoUsuarioPO produtoUsuario);
    Task Desvincular(int idProdutoFinanceiro, int idUsuario);
}
