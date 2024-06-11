using RW_Email.Api.Configurations;
using RW_Email.Api.Middlewares;
using Serilog;
using System.Diagnostics;

var builder = WebApplication.CreateBuilder(args);

var st = new Stopwatch();
st.Start();

try
{
    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();

    builder.ConfigurarSerilog();
    builder.ConfigurarSwagger();
    builder.ConfigurarSendGrid();
    builder.ConfigurarEmailProviders();
    builder.ConfigurarValidadores();
    builder.ConfigurarServices();

    var app = builder.Build();

    app.UseAuthorization();
    app.MapControllers();
    app.UseMiddleware(typeof(ErrorHandlingMiddleware));

    st.Stop();
    Log.Logger.Information("tempo de inicialização da aplicação {@TempoExecucao}", st.Elapsed);

    app.Run();
}
catch (Exception ex)
{
    Log.Logger.Fatal(ex, "não foi possível subir a aplicação {@Message} {@StackTrace}", ex.Message, ex.StackTrace);
    throw;
}