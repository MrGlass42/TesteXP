using RW_Email.Application.Models;
using SendGrid.Helpers.Mail;

namespace RW_Email.Application.Interfaces
{
    public interface ISendGridService
    {
        SendGridMessage MontarEmail(EmailModel emailModel);
    }
}