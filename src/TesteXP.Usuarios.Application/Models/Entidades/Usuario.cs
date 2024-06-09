using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.Util;

namespace TesteXP.Usuarios.Application.Models.Entidades
{
    public class Usuario
    {
        public Usuario() { }

        public Usuario(string nome, ETipoUsuario tipo, string email, string senha)
        {
            Nome = nome;
            Tipo = tipo;
            Email = email;
            Status = EStatusUsuario.Ativo;
            Senha = CriptografiaHelper.Base64Encode(senha);
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public ETipoUsuario Tipo { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public EStatusUsuario Status { get; set; }

        public void MudarStatusParaExcluido() => Status = EStatusUsuario.Excluido;
        public void MudarStatusParaInativo() => Status = EStatusUsuario.Inativo;
        public void MudarStatusParaAtivo() => Status = EStatusUsuario.Ativo;
    }
}