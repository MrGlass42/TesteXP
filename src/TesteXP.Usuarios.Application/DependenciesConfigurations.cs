using Microsoft.Extensions.DependencyInjection;
using TesteXP.Usuarios.Application.ApiClients;
using TesteXP.Usuarios.Application.Events;
using TesteXP.Usuarios.Application.Events.Handlers;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Interfaces.ApiClients;
using TesteXP.Usuarios.Application.Interfaces.Events;
using TesteXP.Usuarios.Application.Interfaces.Events.Handlers;
using TesteXP.Usuarios.Application.Interfaces.Jobs;
using TesteXP.Usuarios.Application.Jobs;
using TesteXP.Usuarios.Application.Models.Requests;
using TesteXP.Usuarios.Application.Repository;
using TesteXP.Usuarios.Application.Services;
using TesteXP.Usuarios.Application.TableDataGateway;
using TesteXP.Usuarios.Application.Validators;

namespace TesteXP.Usuarios.Application
{
    public static class DependenciesConfigurations
    {
        public static void ConfigurarDependenciasUsuario(this IServiceCollection services)
        {
            services
                .AddTransient<IKeycloakHttpClient, KeycloakHttpClient>();

            services
                .AddSingleton<ICustomValidator<CadastrarUsuarioRequest>, CadastrarUsuarioRequestValidator>()
                .AddSingleton<ICustomValidator<ExcluirUsuarioRequest>, ExcluirUsuarioRequestValidator>();

            services
                .AddScoped<ICreateDatabaseUsuarioService, CreateDatabaseService>();

            services
                .AddScoped<IUsuarioTableDataGateway, UsuarioTableDataGateway>()
                .AddScoped<IEventoTableDataGateway, EventoTableDataGateway>();

            services
                .AddScoped<IUsuarioRepository, UsuarioRepository>();

            services
                .AddScoped<IInativarUsuarioService, InativarUsuarioService>()
                .AddScoped<ICadastrarUsuarioService, CadastrarUsuarioService>()
                .AddScoped<IConsultarUsuariosService, ConsultarUsuariosService>();

            services
                .AddTransient<IEventDispatcher, EventDispatcher>()
                .AddTransient<IUsuarioCadastradoKeyCloakHandler, UsuarioCadastradoKeyCloakHandler>()
                .AddTransient<IUsuarioInativadoKeycloakHandler, UsuarioInativadoKeycloakHandler>();

            services
                .AddTransient<IProcessadorEventosJob, ProcessadorEventosJob>();
        }
    }
}