using System.Text.RegularExpressions;

namespace RW_Email.Application.Utils
{
    public static class UtilExtensions
    {
        public static string LimparStringDeHtml(string texto)
        {
            return Regex.Replace(texto, @"<[^>]+>| ", " ").Trim();
        }
    }
}
