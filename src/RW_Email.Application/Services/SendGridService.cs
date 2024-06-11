using Microsoft.Extensions.Configuration;
using RW_Email.Application.Helpers;
using RW_Email.Application.Interfaces;
using RW_Email.Application.Models;
using SendGrid.Helpers.Mail;
using Serilog;

namespace RW_Email.Application.Services
{
    public class SendGridService : ISendGridService
    {
        private readonly IConfiguration _configuration;

        public SendGridService(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public SendGridMessage MontarEmail(EmailModel emailModel)
        {
            GetConfigs(out string from, out string fromName, out bool naoEnviarEmail);

            var sendGridMessage = new SendGridMessage
            {
                Subject = emailModel.Assunto,
                From = new EmailAddress(from, fromName),
                HtmlContent = ModulaHtmlHelper.Modular(emailModel.TipoTemplateEmail, emailModel.ValoresDinamicos)
            };

            sendGridMessage.SetSandBoxMode(naoEnviarEmail);
            sendGridMessage.AddTo(new EmailAddress(emailModel.Destinatario));

            return sendGridMessage;
        }

        private void GetConfigs(out string from, out string fromName, out bool naoEnviarEmail)
        {
            from = _configuration["Email:from"]!;
            fromName = _configuration["Email:name"]!;

            if (string.IsNullOrEmpty(from))
                throw new ArgumentNullException("Configuração 'Email:from' não encontrada no appsettings");

            if (string.IsNullOrEmpty(fromName))
                throw new ArgumentNullException("Configuração 'Email:name' não encontrada no appsettings");


            var configNaoEnviar = _configuration["Email:isTest"];
            if (string.IsNullOrEmpty(configNaoEnviar) is false)
                naoEnviarEmail = bool.Parse(configNaoEnviar);
            else
            {
                Log.Warning("Configuração de Envio de Email não encontrada.");
                naoEnviarEmail = true;
            }
        }
    }
}