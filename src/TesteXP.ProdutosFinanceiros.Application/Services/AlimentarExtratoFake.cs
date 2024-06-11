using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.ProdutosFinanceiros.Application.Services;

public class AlimentarExtratoFake : IAlimentarExtratoFake
{
    private readonly IProdutoFinanceiroRepository _produtoFinanceiroRepository;
    private readonly IExtratoTableDataGateway _extratoTableDataGateway;

    public AlimentarExtratoFake(IProdutoFinanceiroRepository produtoFinanceiroRepository, IExtratoTableDataGateway extratoTableDataGateway)
    {
        _produtoFinanceiroRepository = produtoFinanceiroRepository;
        _extratoTableDataGateway = extratoTableDataGateway;
    }

    public async Task Alimentar()
    {
        var produtos = await _produtoFinanceiroRepository.ConsultarTodosOsProdutos();

        foreach (var prd in produtos)
        {
            var valorAtual = await _produtoFinanceiroRepository.ConsultarValorAtualProduto(prd.Id);

            var extrato = new ExtratoPO
            {
                DataReferencia = DateTime.Now,
                IdProdutoFinanceiro = prd.Id,
                Rendimento = prd.RendimentoDiario,
                ValorAnterior = valorAtual,
            };

            await _extratoTableDataGateway.InserirRegistro(extrato);
        }
    }
}
