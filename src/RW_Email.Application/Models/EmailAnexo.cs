namespace RW_Email.Application.Models;

public class EmailAnexo
{
    public EmailAnexo(string nomeDocumento, EExtensaoDocumento extensaoDocumento, byte[] conteudo)
    {
        NomeDocumento = nomeDocumento;
        Conteudo = conteudo;
        Extensao = extensaoDocumento;

        CabelhadoExtensao = new Dictionary<EExtensaoDocumento, IDictionary<string, string>>()
        {
            {
                EExtensaoDocumento.EXCEL, new Dictionary<string, string>()
                {
                    { ".xlsx", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" }
                }
            }
        };
    }

    public byte[] Conteudo { get; set; }
    public string NomeDocumento { get; set; }
    public EExtensaoDocumento Extensao { get; set; }
    public IReadOnlyDictionary<EExtensaoDocumento, IDictionary<string, string>> CabelhadoExtensao { get; }
}
