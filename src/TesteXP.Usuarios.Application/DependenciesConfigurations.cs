using Microsoft.Extensions.DependencyInjection;
using TesteXP.Usuarios.Application.Interfaces;
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
                .AddScoped<ICadastrarUsuarioService, CadastrarUsuarioService>()
                .AddScoped<IExcluirUsuarioService, ExcluirUsuarioService>()
                .AddScoped<IConsultarUsuariosService, ConsultarUsuariosService>();
        }
    }
}