using FluentScheduler;
using Keycloak.AuthServices.Authentication;
using Keycloak.AuthServices.Authorization;
using Keycloak.AuthServices.Sdk.Admin;
using Serilog;
using Serilog.Events;
using TesteXP.Infra;
using TesteXP.Infra.Interfaces;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Models.Requests;
using TesteXP.Usuarios.Application.Repository;
using TesteXP.Usuarios.Application.Services;
using TesteXP.Usuarios.Application.TableDataGateway;
using TesteXP.Usuarios.Application.Validators;

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
                .AddSingleton<ICustomValidator<CadastrarUsuarioRequest>, CadastrarUsuarioRequestValidator>()
                .AddSingleton<ICustomValidator<ExcluirUsuarioRequest>, ExcluirUsuarioRequestValidator>();

            builder.Services
                .AddScoped<IDatabaseConnection, DatabaseConnection>()
                .AddScoped<ICreateDatabaseService, CreateDatabaseService>();

            builder.Services
                .AddScoped<IUnitOfWork, UnitOfWork>();

            builder.Services
                .AddScoped<IUsuarioTableDataGateway, UsuarioTableDataGateway>()
                .AddScoped<IEventoTableDataGateway, EventoTableDataGateway>();

            builder.Services
                .AddScoped<IUsuarioRepository, UsuarioRepository>();

            builder.Services
                .AddScoped<ICadastrarUsuarioService, CadastrarUsuarioService>()
                .AddScoped<IExcluirUsuarioService, ExcluirUsuarioService>()
                .AddScoped<IConsultarUsuariosService, ConsultarUsuariosService>();

            // builder.Services
            //     .AddTransient<IDomainEventDispatcher, DomainEventDispatcher>()
            //     .AddTransient<IUsuarioInativadoMessageHandler, UsuarioInativadoMessageHandler>()
            //     .AddTransient<IUsuarioInativadoKeyCloakHandler, UsuarioInativadoKeyCloakHandler>()
            //     .AddTransient<IUsuarioCadastradoMessageHandler, UsuarioCadastradoMessageHandler>()
            //     .AddTransient<IUsuarioCadastradoKeyCloakHandler, UsuarioCadastradoKeyCloakHandler>()
            //     .AddTransient<IUsuarioCadastradoEnviarSenhaHandler, UsuarioCadastradoEnviarSenhaHandler>()
            //     .AddTransient<IUsuarioTrocarSenhaKeyCloakHandler, UsuarioTrocarSenhaKeyCloakHandler>()
            //     .AddTransient<IUsuarioExcluidoKeycloakHandler, UsuarioExcluidoKeycloakHandler>()
            //     .AddTransient<IUsuarioExcluidoMessageHandler, UsuarioExcluidoMessageHandler>()
            //     .AddTransient<IUsuarioReativadoKeycloakHandler, UsuarioReativadoKeycloakHandler>()
            //     .AddTransient<IUsuarioReativadoMessageHandler, UsuarioReativoMessageHandler>();

            // builder.Services
            //     .AddTransient<IProcessadorEventosJob, ProcessadorEventosJob>();
        }

        public static void ConfigurarSwagger(this WebApplicationBuilder builder)
        {
            builder.Services.AddSwaggerGen();
        }


        public static void ConfigurarApiClients(this WebApplicationBuilder builder)
        {
            builder.Services.AddHttpClient();

            // builder.Services
            //     .AddTransient<IEmailHttpClient, EmailHttpClient>()
            //     .AddTransient<IKeycloakHttpClient, KeycloakHttpClient>();
        }

        public static void RegistrarJobs(this WebApplicationBuilder builder)
        {
            var serviceProvider = builder.Services.BuildServiceProvider();
            // var processadorEventosJob = serviceProvider.GetService<IProcessadorEventosJob>();

            // if (processadorEventosJob is null)
            //     throw new NullReferenceException("Não foi possível recuperar um objeto de serviço para o job.");

            // JobManager.Initialize();

            // JobManager.AddJob(() =>
            //     processadorEventosJob.Execute(),
            //     s => s.NonReentrant().ToRunEvery(10).Seconds());
        }

        public static async Task CreateDatabase(this WebApplicationBuilder builder)
        {
            var serviceProvider = builder.Services.BuildServiceProvider();
            var createDatabaseService = serviceProvider.GetService<ICreateDatabaseService>();

            if (createDatabaseService is null)
                throw new NullReferenceException("Não foi possível recuperar um objeto de serviço para criação da estrutura relacional");

            await createDatabaseService.CreateDatabase();
        }
    }
}