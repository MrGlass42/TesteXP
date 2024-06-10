using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IUsuarioTableDataGateway
    {
        Task Excluir(int id);
        Task Inserir(UsuarioPO usuario);
        Task<List<UsuarioPO>> Consultar();
        Task<UsuarioPO?> ConsultarPorId(int usuarioId);
        Task AtualizarStatus(int status, int usuarioId);
        Task<UsuarioPO?> ConsultarPorEmail(string email);
        Task<UsuarioPO?> ConsultarPorNome(string nome);
    }
}