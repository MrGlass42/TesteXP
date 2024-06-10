using TesteXP.ProdutosFinanceiros.Application.Models.Entidades;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Mappers;

public static class InvestidorMapper
{
    public static Investidor ToInvestidorEntidade(this UsuarioPO po, SaldoPO saldo)
    {
        return new Investidor
        {
            Id = po.Id,
            Nome = po.Nome,
            Email = po.Email,
            Saldo = new Saldo
            {
                Id = saldo.Id,
                Valor =  saldo.Valor
            }
        };
    }
}
