using RW_Email.Application.Models.Enums;

namespace RW_Email.Application.Models;

public class EmailModel
{
    public EmailModel(
        string destinatario,
        string assunto,
        ETipoTemplateEmail tipoTemplateEmail,
        Dictionary<string, string> valoresDinamicos,
        EmailAnexo? anexo = null
    )
    {
        Destinatario = destinatario;
        Assunto = assunto;
        TipoTemplateEmail = tipoTemplateEmail;
        ValoresDinamicos = valoresDinamicos;
        Anexo = anexo;
    }

    public string Destinatario { get; set; }
    public string Assunto { get; set; }
    public ETipoTemplateEmail TipoTemplateEmail { get; set; }
    public IDictionary<string, string> ValoresDinamicos { get; set; }
    public EmailAnexo? Anexo { get; set; } = null;
}