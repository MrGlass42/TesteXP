using RW_Email.Application.Interfaces;
using RW_Email.Application.Models;
using RW_Email.Application.Models.Enums;
using RW_Email.Application.Models.Requests;
using SendGrid.Helpers.Mail;

namespace RW_Email.Application.Services
{
    public class EnviarProdutosAVencerService : IEnviarProdutosAVencerService
    {
        private readonly ISendGridService _sendGridService;
        private readonly IEmailProviders<SendGridMessage> _emailProviders;
        private readonly ICustomValidator<EnviarProdutosAVencerRequest> _validator;

        public EnviarProdutosAVencerService(
            ISendGridService sendGrid,
            IEmailProviders<SendGridMessage> emailProviders,
            ICustomValidator<EnviarProdutosAVencerRequest> validator
        )
        {
            _sendGridService = sendGrid;
            _validator = validator;
            _emailProviders = emailProviders;
        }

        public async Task Enviar(EnviarProdutosAVencerRequest dadosEmail)
        {
            _validator.ExecuteValidation(dadosEmail);

            foreach (var email in dadosEmail.Emails)
            {
                var chavesValoresDinamicos = new Dictionary<string, string>
                {
                    { "##produtos##", GerarListaHtml(dadosEmail.Produtos) },
                };

                var emailModel = new EmailModel(email, "Temos produtos a vencer!",
                    ETipoTemplateEmail.ProdutosAVencer, chavesValoresDinamicos);

                var msg = _sendGridService.MontarEmail(emailModel);

                await _emailProviders.DispacharEmail(msg);
            }
        }

        public string GerarListaHtml(IEnumerable<Produto> produtos)
        {
            var sb = new System.Text.StringBuilder();
            sb.Append("<ul>");

            foreach (var produto in produtos)
            {
                sb.Append("<li>");
                sb.Append($"{System.Net.WebUtility.HtmlEncode(produto.Nome)} - {System.Net.WebUtility.HtmlEncode(produto.DataVencimento.ToString("yyyy-MM-dd"))}");
                sb.Append("</li>");
            }

            sb.Append("</ul>");
            return sb.ToString();
        }
    }
}