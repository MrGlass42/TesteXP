using RW_Email.Application.Infraestrutura.EmailProviders;
using RW_Email.Application.Interfaces;
using RW_Email.Application.Models.Requests;
using RW_Email.Application.Services;
using RW_Email.Application.Validators;
using SendGrid.Extensions.DependencyInjection;
using SendGrid.Helpers.Mail;
using Serilog;
using Serilog.Events;

namespace RW_Email.Api.Configurations;
public static class ConfigureServices
{
    public static void ConfigurarSendGrid(this WebApplicationBuilder builder)
    {
        string chave = builder.Configuration["ChaveSendGrid"]!;

        if (string.IsNullOrEmpty(chave))
            throw new Exception("config ChaveSendGrid não encontrada");


        builder.Services.AddSendGrid(options => { options.ApiKey = chave; });
    }

    public static void ConfigurarSerilog(this WebApplicationBuilder builder)
    {
        Log.Logger = new LoggerConfiguration()
            .Enrich.WithProperty("Version", "1.0.0")
            .Enrich.FromLogContext()
            .MinimumLevel.Information()
            .MinimumLevel.Override("Microsoft", LogEventLevel.Warning)
            .MinimumLevel.Override("System", LogEventLevel.Warning)
            .WriteTo.Console()
            .CreateLogger();

        builder.Host.UseSerilog();
    }

    public static void ConfigurarEmailProviders(this WebApplicationBuilder builder)
    {
        builder.Services
            .AddScoped<IEmailProviders<SendGridMessage>, SendGridProvider>();
    }

    public static void ConfigurarServices(this WebApplicationBuilder builder)
    {
        builder.Services
            .AddScoped<ISendGridService, SendGridService>();

        builder.Services
            .AddScoped<IEnviarProdutosAVencerService, EnviarProdutosAVencerService>();
    }

    public static void ConfigurarSwagger(this WebApplicationBuilder builder)
    {
        builder.Services.AddSwaggerGen();
    }

    public static void ConfigurarValidadores(this WebApplicationBuilder builder)
    {
        builder.Services
            .AddTransient<ICustomValidator<EnviarProdutosAVencerRequest>, EnviarProdutosAVencerRequestValidator>();
    }
}