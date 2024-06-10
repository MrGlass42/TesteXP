using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Mappers;
using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Repository;

public class InvestidorRepository : IInvestidorRepository
{
    private readonly IProdutoUsuarioTableDataGateway _produtoUsuarioTableDataGateway; 
    private readonly IInvestidorTableDataGateway _investidorTableDataGateway;
    private readonly ISaldoTableDataGateway _saldoTableDataGateway;

    public InvestidorRepository(
        IInvestidorTableDataGateway investidorTableDataGateway, 
        ISaldoTableDataGateway saldoTableDataGateway, 
        IProdutoUsuarioTableDataGateway produtoUsuarioTableDataGateway)
    {
        _investidorTableDataGateway = investidorTableDataGateway;
        _saldoTableDataGateway = saldoTableDataGateway;
        _produtoUsuarioTableDataGateway = produtoUsuarioTableDataGateway;

    }

    public async Task<Investidor?> ConsultarPorEmail(string email)
    {
        var investidor = await _investidorTableDataGateway.ConsultarInvestidorPorEmail(email);

        if(investidor is null)
            return null!;

        var saldo = await GetSaldo(investidor);
        
        return investidor.ToInvestidorEntidade(saldo);
    }

    public async Task<Investidor?> ConsultarPorId(int id)
    {
        var investidor = await _investidorTableDataGateway.ConsultarInvestidorPorId(id);

        if (investidor is null)
            return null!;
        
        var saldo = await GetSaldo(investidor);

        return investidor.ToInvestidorEntidade(saldo);
    }

    public async Task<Investidor?> ConsultarPorProdutoId(int produtoId)
    {
        var produtoUsuario = await _produtoUsuarioTableDataGateway.ConsultarPorProdutoId(produtoId);

        if(produtoUsuario is null)
            return null;

        return await ConsultarPorId(produtoUsuario.IdUsuario);
    }


    private async Task<SaldoPO> GetSaldo(UsuarioPO investidor)
    {
        var saldo = await _saldoTableDataGateway.ConsultarSaldoPorUsuario(investidor.Id);
        if (saldo is null)
        {
            saldo = new SaldoPO(investidor.Id);
            await _saldoTableDataGateway.Iniciar(saldo);
        }

        return saldo;
    }
}