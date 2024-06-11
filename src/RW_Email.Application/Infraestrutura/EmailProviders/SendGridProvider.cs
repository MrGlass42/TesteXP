using Microsoft.Extensions.Logging;
using RW_Email.Application.Interfaces;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace RW_Email.Application.Infraestrutura.EmailProviders
{
    public class SendGridProvider : IEmailProviders<SendGridMessage>
    {
        private readonly ILogger<SendGridProvider> _logger;
        private readonly ISendGridClient _sendGridClient;

        public SendGridProvider(
            ISendGridClient sendGridClient, 
            ILogger<SendGridProvider> logger)
        {
            _sendGridClient = sendGridClient;
            _logger = logger;
        }

        public async Task DispacharEmail(SendGridMessage msg)
        {
            var resultado = await _sendGridClient.SendEmailAsync(msg);

            if (resultado.IsSuccessStatusCode is false)
            {
                _logger.LogError("Erro de comunicação com o a API da SendGrid - StatusCode {@StatusCode} {@Body}", resultado.StatusCode, await resultado.Body.ReadAsStringAsync());
                throw new Exception($"Erro ao disparar o e-mail: [{msg.Subject}] - StatusCode [{resultado.StatusCode}] - Body [{await resultado.Body.ReadAsStringAsync()}]");
            }
        }
    }
}