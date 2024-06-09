using Microsoft.Extensions.DependencyInjection;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
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
                .AddSingleton<ICustomValidator<CadastrarProdutoFinanceiroRequest>, CadastrarProdutoFinanceiroRequestValidator>()
                .AddSingleton<ICustomValidator<AtualizarProdutoFinanceiroRequest>, AtualizarProdutoFinanceiroRequestValidator>();

            services
                .AddScoped<ICreateDatabaseFinanceiroService, CreateDatabaseService>();

            services
                .AddScoped<IProdutoFinanceiroTableDataGateway, ProdutoFinanceiroTableDataGateway>();

            services
                .AddScoped<IProdutoFinanceiroRepository, ProdutoFinanceiroRepository>();

            services
                .AddScoped<IAtivarProdutoService, AtivarProdutoService>()
                .AddScoped<IAtualizarProdutoFinanceiroService, AtualizarProdutoFinanceiroService>()
                .AddScoped<ICadastrarProdutoFinanceiroService, CadastrarProdutoFinanceiroService>()
                .AddScoped<IConsultarProdutoPorIdService, ConsultarProdutoIdService>()
                .AddScoped<IConsultarProdutosDisponiveisPraVenda, ConsultarProdutosDisponiveisPraVenda>()
                .AddScoped<IInativarProdutoService, InativarProdutoService>();
        }
    }
}