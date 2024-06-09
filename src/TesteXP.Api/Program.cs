using System.Diagnostics;
using Serilog;
using TesteXP.Api.Configurations;
using TesteXP.Api.Middlewares;

namespace TesteXP.Api
{
    public class Program
    {
        public static void Main(string[] args)
        {
            string _nomePoliticaCors = "_politicaCorsPadrao";
            var builder = WebApplication.CreateBuilder(args);

            var st = new Stopwatch();
            st.Start();

            try
            {
                builder.Services.AddControllers();
                builder.Services.AddEndpointsApiExplorer();
                builder.ConfigurarSerilog();
                builder.ConfigurarKeycloakAuth();
                builder.ConfigurarAuthorize();
                builder.ConfigurarApiClients();
                builder.ConfigurarDependencias();
                builder.CreateDatabase().Wait();
                builder.ConfigurarCors(_nomePoliticaCors);
                builder.RegistrarJobs();

                var app = builder.Build();

                app.UseAuthentication();
                app.UseAuthorization();

                app.UseCors(_nomePoliticaCors);

                app.MapControllers();
                
                app.UseMiddleware(typeof(ErrorHandlingMiddleware));

                st.Stop();

                Log.Information("aplicação iniciada em: {@TempoExecucao}", st.Elapsed);

                app.Run();
            }
            catch (Exception ex)
            {
                Log.Fatal(ex, "houve um erro ao iniciar a aplicação: {@Message}", ex.Message);
                throw;
            }
        }
    }
}