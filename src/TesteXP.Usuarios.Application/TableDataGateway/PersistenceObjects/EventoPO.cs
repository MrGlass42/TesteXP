using System.Text.Json;
using TesteXP.Usuarios.Application.Exceptions;
using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.Util;

namespace TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects
{
    public class EventoPO
    {
        public EventoPO() { }
        public EventoPO(ETipoEvento tipoEvento, string descricaoEvento, UsuarioPO usuario)
        {
            if (usuario is null)
                throw new CriacaoEventoException("Usuário inválido usado na criação de evento");

            IdUsuario = usuario.Id;
            TipoEvento = tipoEvento;
            DescricaoEvento = descricaoEvento;
            UsuarioSnapshot = CriptografiaHelper.Base64Encode(JsonSerializer.Serialize(usuario));
        }

        public UsuarioPO? GetUsuario() => JsonSerializer.Deserialize<UsuarioPO>(CriptografiaHelper.Base64Decode(UsuarioSnapshot));

        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public string UsuarioSnapshot { get; set; }
        public ETipoEvento TipoEvento { get; set; }
        public string DescricaoEvento { get; set; }
    }
}