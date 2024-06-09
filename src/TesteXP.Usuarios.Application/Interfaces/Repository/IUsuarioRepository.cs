using TesteXP.Usuarios.Application.Models.Entidades;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IUsuarioRepository
    {
        public void Inserir(Usuario usuario);
        public Task<List<Usuario>> Consultar();
        public Task<Usuario> ConsultarPorId(int usuarioId);
        public Task<bool> CadastroPermitido(string email);
        public Task<Usuario> ConsultarPorEmail(string email);
        public void Excluir(Usuario usuario);
    }
}