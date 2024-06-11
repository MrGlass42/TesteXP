using RW_Email.Application.Models.Enums;

namespace RW_Email.Application.Helpers;

public static class ModulaHtmlHelper
{
    public static string Modular(ETipoTemplateEmail template, IDictionary<string, string> dadosDinamicos)
    {
        var caminhoArquivo = AcharArquivo(template);

        return AplicaDadosDinamicos(caminhoArquivo, dadosDinamicos);
    }

    private static string AcharArquivo(ETipoTemplateEmail template) => Path.GetFullPath($"../../templates/{NomeDoArquivo(template)}");

    private static string NomeDoArquivo(ETipoTemplateEmail template)
    {
        return template switch
        {
            ETipoTemplateEmail.ProdutosAVencer => "template_produtos_a_vencer.html",
            _ => string.Empty
        };
    }

    private static string AplicaDadosDinamicos(string caminhoArquivo, IDictionary<string, string> chaveValorReplaces)
    {
        using (var reader = new StreamReader(caminhoArquivo))
        {
            var arquivo = reader.ReadToEnd();

            var arquivoReplace = arquivo.Clone().ToString()
                ?? throw new Exception("houve um erro inesperado ao tratar o conteudo no template de email");

            foreach (var item in chaveValorReplaces)
                arquivoReplace = arquivoReplace.Replace(item.Key, item.Value);

            return arquivoReplace;
        }
    }
}