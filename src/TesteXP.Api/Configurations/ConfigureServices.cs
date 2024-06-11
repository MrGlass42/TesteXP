using FluentScheduler;
using Keycloak.AuthServices.Authentication;
using Keycloak.AuthServices.Authorization;
using Keycloak.AuthServices.Sdk.Admin;
using Serilog;
using Serilog.Events;
using TesteXP.Infra;
using TesteXP.Infra.Interfaces;
using TesteXP.ProdutosFinanceiros.Application;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Jobs;
using TesteXP.Usuarios.Application;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Interfaces.Jobs;

namespace TesteXP.Api.Configurations
{
    public static class ConfigureServices
    {
        public static void ConfigurarCors(this WebApplicationBuilder builder, string nomePolitica)
        {
            builder.Services.AddCors(options =>
            {
                options.AddPolicy(name: nomePolitica,
                policy =>
                {
                    policy.AllowAnyHeader();
                    policy.AllowAnyMethod();
                    policy.AllowAnyOrigin();
                });
            });
        }

        public static void ConfigurarSerilog(this WebApplicationBuilder builder)
        {
            Log.Logger = new LoggerConfiguration()
                .Enrich.FromLogContext()
                .MinimumLevel.Information()
                .MinimumLevel.Override("Microsoft", LogEventLevel.Warning)
                .MinimumLevel.Override("System", LogEventLevel.Warning)
                .WriteTo.Console()
                .CreateLogger();

            builder.Host.UseSerilog();
        }

        public static void ConfigurarKeycloakAuth(this WebApplicationBuilder builder)
        {
            var authenticationOptions = builder
                                .Configuration
                                .GetSection(KeycloakAuthenticationOptions.Section)
                                .Get<KeycloakAuthenticationOptions>();

            builder.Services.AddKeycloakAuthentication(authenticationOptions);

            var authorizationOptions = builder
                                        .Configuration
                                        .GetSection(KeycloakProtectionClientOptions.Section)
                                        .Get<KeycloakProtectionClientOptions>();

            builder.Services.AddKeycloakAuthorization(authorizationOptions);

            var adminClientOptions = builder
                                        .Configuration
                                        .GetSection(KeycloakAdminClientOptions.Section)
                                        .Get<KeycloakAdminClientOptions>();

            builder.Services.AddKeycloakAdminHttpClient(adminClientOptions);
        }

        public static void ConfigurarAuthorize(this WebApplicationBuilder builder)
        {
            builder.Services.AddAuthorization(options =>
            {
                options.AddPolicy("IsAdmin", builder =>
                {
                    builder.RequireAuthenticatedUser()
                        .RequireRealmRoles("Admin");
                });

                options.AddPolicy("TodosPodemAcessar", builder =>
                {
                    builder.RequireAuthenticatedUser()
                        .RequireRealmRoles("Admin", "Investidor");
                });
            });
        }

        public static void ConfigurarDependencias(this WebApplicationBuilder builder)
        {
            builder.Services
                .AddScoped<IDatabaseConnection, DatabaseConnection>();

            builder.Services
                .AddScoped<IUnitOfWork, UnitOfWork>();

            builder.Services.ConfigurarDependenciasUsuario();
            builder.Services.ConfigurarDependenciasProdutoFinanceiro();
        }

        public static void ConfigurarSwagger(this WebApplicationBuilder builder)
        {
            builder.Services.AddSwaggerGen();
        }


        public static void RegistrarJobs(this WebApplicationBuilder builder)
        {
            var serviceProvider = builder.Services.BuildServiceProvider();
            var processadorEventosJob = serviceProvider.GetService<IProcessadorEventosJob>();
            var emailJob = serviceProvider.GetService<IEmailProdutosAVencerJob>();

            if (processadorEventosJob is null)
                throw new NullReferenceException("não foi possível recuperar um objeto de serviço para o job IProcessadorEventosJob.");

            if (emailJob is null)
                throw new NullReferenceException("não foi possível recuperar um objeto de serviço para o job EmailProdutosAVencerJob.");

            JobManager.Initialize();

            JobManager.AddJob(processadorEventosJob.Execute, s => s.NonReentrant().ToRunEvery(10).Seconds());
            JobManager.AddJob(emailJob.Execute, s => s.NonReentrant().ToRunEvery(1).Days());
        }

        public static async Task CreateDatabase(this WebApplicationBuilder builder)
        {
            var serviceProvider = builder.Services.BuildServiceProvider();
            var createDatabaseServiceUsuario = serviceProvider.GetService<ICreateDatabaseUsuarioService>();
            var createDatabaseServiceFinanceiro = serviceProvider.GetService<ICreateDatabaseFinanceiroService>();

            if (createDatabaseServiceUsuario is null)
                throw new NullReferenceException("não foi possível recuperar um objeto de serviço para criação da estrutura relacional dos usuarios");

            if (createDatabaseServiceFinanceiro is null)
                throw new NullReferenceException("Não foi possível recuperar um objeto de serviço para criação da estrutura relacional do financeiro");

            await createDatabaseServiceUsuario.CreateDatabase();
            await createDatabaseServiceFinanceiro.CreateDatabase();
        }
    }
}