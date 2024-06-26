using Microsoft.Extensions.DependencyInjection;
using TesteXP.ProdutosFinanceiros.Application.ApiClients;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.ApiClients;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Jobs;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Repository;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Jobs;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;
using TesteXP.ProdutosFinanceiros.Application.Repository;
using TesteXP.ProdutosFinanceiros.Application.Services;
using TesteXP.ProdutosFinanceiros.Application.TableDataGateway;
using TesteXP.ProdutosFinanceiros.Application.Validators;

namespace TesteXP.ProdutosFinanceiros.Application
{
    public static class DependenciesConfigurations
    {
        public static void ConfigurarDependenciasProdutoFinanceiro(this IServiceCollection services)
        {
            services
                .AddTransient<IEmailHttpClient, EmailHttpClient>();

            services
                .AddSingleton<ICustomValidator<CadastrarProdutoFinanceiroRequest>, CadastrarProdutoFinanceiroRequestValidator>()
                .AddSingleton<ICustomValidator<AtualizarProdutoFinanceiroRequest>, AtualizarProdutoFinanceiroRequestValidator>();

            services
                .AddScoped<ICreateDatabaseFinanceiroService, CreateDatabaseService>();

            services
                .AddScoped<IExtratoTableDataGateway, ExtratoTableDataGateway>()
                .AddScoped<IInvestidorTableDataGateway, InvestidorTableDataGateway>()
                .AddScoped<IProdutoUsuarioTableDataGateway, ProdutoUsuarioTableDataGateway>()
                .AddScoped<ISaldoTableDataGateway, SaldoTableDataGateway>()
                .AddScoped<IVendaTableDataGateway, VendaTableDataGateway>()
                .AddScoped<IProdutoFinanceiroTableDataGateway, ProdutoFinanceiroTableDataGateway>();

            services
                .AddScoped<IInvestidorRepository, InvestidorRepository>()
                .AddScoped<IOperacaoFinanceiraRepository, OperacaoFinanceiraRepository>()
                .AddScoped<IProdutoFinanceiroRepository, ProdutoFinanceiroRepository>();

            services
                .AddScoped<IConsultarTodosOsProdutos, ConsultarTodosOsProdutos>()
                .AddScoped<IConsultarProdutosPorInvestidor, ConsultarProdutosPorInvestidor>()
                .AddScoped<IAtualizarDisponivelPraVenda, AtualizarDisponivelPraVenda>()
                .AddScoped<IAlimentarExtratoFake, AlimentarExtratoFake>()
                .AddScoped<ICompraService, CompraService>()
                .AddScoped<IAtivarProdutoService, AtivarProdutoService>()
                .AddScoped<IExtratoRecenteService, ExtratoRecenteService>()  
                .AddScoped<IAtualizarProdutoFinanceiroService, AtualizarProdutoFinanceiroService>()
                .AddScoped<ICadastrarProdutoFinanceiroService, CadastrarProdutoFinanceiroService>()
                .AddScoped<IConsultarProdutoPorIdService, ConsultarProdutoIdService>()
                .AddScoped<IConsultarProdutosDisponiveisPraVenda, ConsultarProdutosDisponiveisPraVenda>()
                .AddScoped<IInativarProdutoService, InativarProdutoService>();

            services
                .AddTransient<IEmailProdutosAVencerJob, EmailProdutosAVencerJob>();
        }
    }
}