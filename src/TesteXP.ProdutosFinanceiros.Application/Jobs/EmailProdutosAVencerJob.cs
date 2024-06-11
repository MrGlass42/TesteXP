using Microsoft.Extensions.Configuration;
using Serilog;
using TesteXP.ProdutosFinanceiros.Application.Exceptions;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.ApiClients;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Jobs;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Jobs;

public class EmailProdutosAVencerJob : IEmailProdutosAVencerJob
{
    private readonly IProdutoFinanceiroTableDataGateway _produtoFinanceiroTableDataGateway;
    private readonly IInvestidorTableDataGateway _investidorTableDataGateway;
    private readonly IEmailHttpClient _emailHttpClient;

    private readonly int _configQtdeDiasParaVencimento;
    private readonly bool _deveEnviarEmail;

    public EmailProdutosAVencerJob(
        IProdutoFinanceiroTableDataGateway produtoFinanceiroTableDataGateway,
        IEmailHttpClient emailHttpClient,
        IConfiguration configuration,
        IInvestidorTableDataGateway investidorTableDataGateway)
    {
        _produtoFinanceiroTableDataGateway = produtoFinanceiroTableDataGateway;
        _investidorTableDataGateway = investidorTableDataGateway;
        _emailHttpClient = emailHttpClient;

        string configQtdeDias = configuration["QtdeDiasParaVencimento"]!;
        bool parseComSucesso = int.TryParse(configQtdeDias, out _configQtdeDiasParaVencimento);

        if (parseComSucesso is false)
            throw new ConfiguracaoInvalidaException("a configuração QtdeDiasParaVencimento não foi encontrada");

        string configDeveEnviarEmail = configuration["DeveEnviarEmail"]!;
        parseComSucesso = bool.TryParse(configDeveEnviarEmail, out _deveEnviarEmail);

        if (parseComSucesso is false)
            throw new ConfiguracaoInvalidaException("a configuração DeveEnviarEmail não foi encontrada");

    }


    public void Execute() => Processar().Wait();

    private async Task Processar()
    {
        try
        {
            var produtosAVencer = await _produtoFinanceiroTableDataGateway.ConsultarProdutosProximosDoVencimento(_configQtdeDiasParaVencimento);
            var admins = await _investidorTableDataGateway.ConsultarPorAdministradores();

            if (produtosAVencer.Any() && admins.Any())
            {
                var produtosParaEmail = produtosAVencer.Select(x => new ProdutoParaEmail(x.Nome, x.DataVencimento));
                var emails = admins.Select(x => x.Email);

                if (_deveEnviarEmail)
                {
                    var request = new EnviarEmailRequest(emails, produtosParaEmail);
                    await _emailHttpClient.Enviar(request);
                }

                Log.Information($"Emails enviados para: {string.Join(",", emails)}");
            }
            else
                Log.Warning($"Email não enviado, produtos a vencer: {produtosAVencer.Count} - admins encontrados: {admins.Count}");
        }
        catch (Exception ex)
        {
            Log.Error(ex, ex.Message);
        }
    }
}