using TesteXP.Usuarios.Application.Models.Entidades;
using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Mappers
{
    public static class UsuarioMapper
    {
        public static Usuario ToUsuarioEntidade(this UsuarioPO? po)
        {
            if(po is null)
                return null!;

            return new Usuario
            {
                Id = po.Id,
                Nome = po.Nome,
                Tipo = (ETipoUsuario) po.Tipo,
                Email = po.Email,
                Senha = po.Senha,
                Status = (EStatusUsuario) po.Status,
            };
        }

        public static List<Usuario> ToUsuarioEntidade(this List<UsuarioPO> pos) => pos.Select(x => x.ToUsuarioEntidade()).ToList();

        public static UsuarioPO ToUsuarioPO(this Usuario? ent)
        {
            if(ent is null)
                return null!;

            return new UsuarioPO
            {
                Id = ent.Id,
                Nome = ent.Nome,
                Tipo = (int) ent.Tipo,
                Email = ent.Email,
                Senha = ent.Senha,
                Status = (int) ent.Status,
            };
        }

        public static List<UsuarioPO> ToUsuarioPO(this List<Usuario> ents) => ents.Select(x => x.ToUsuarioPO()).ToList();
    }
}