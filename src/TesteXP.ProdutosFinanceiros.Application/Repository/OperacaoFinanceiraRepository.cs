using TesteXP.Infra.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Repository;

public class OperacaoFinanceiraRepository : IOperacaoFinanceiraRepository
{
    private readonly IProdutoUsuarioTableDataGateway _produtoUsuarioTableDataGateway;
    private readonly ISaldoTableDataGateway _saldoTableDataGateway;
    private readonly IVendaTableDataGateway _vendaTableDataGateway;
    private readonly IUnitOfWork _unitOfWork;

    public OperacaoFinanceiraRepository
    (
        IProdutoUsuarioTableDataGateway produtoUsuarioTableDataGateway, 
        ISaldoTableDataGateway saldoTableDataGateway, 
        IVendaTableDataGateway vendaTableDataGateway, 
        IUnitOfWork unitOfWork)
    {
        _produtoUsuarioTableDataGateway = produtoUsuarioTableDataGateway;
        _saldoTableDataGateway = saldoTableDataGateway;
        _vendaTableDataGateway = vendaTableDataGateway;
        _unitOfWork = unitOfWork;
    }

    public void RegistrarCompra(Investidor comprador, int idProdutoFinanceiro, decimal valor, Investidor? vendedor)
    {
        _unitOfWork.AddDatabaseOperation(() => 
        {
            var produtoUsuario = new ProdutoUsuarioPO(idProdutoFinanceiro, comprador.Id);

            _saldoTableDataGateway.AtualizarSaldo(comprador.Saldo.Valor, comprador.Saldo.Id).Wait();
            _produtoUsuarioTableDataGateway.Vincular(produtoUsuario).Wait();

            if(vendedor is not null)
            {
                _produtoUsuarioTableDataGateway.Desvincular(idProdutoFinanceiro, vendedor.Id).Wait();
                _saldoTableDataGateway.AtualizarSaldo(vendedor.Saldo.Valor, vendedor.Saldo.Id).Wait();
            }

            int? idVendedor = vendedor is null ? null : vendedor.Id;
            _vendaTableDataGateway.Inserir(new VendaPO(valor, idProdutoFinanceiro, comprador.Id, idVendedor)).Wait();
        });

        _unitOfWork.Commit();
    }
}