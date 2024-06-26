using TesteXP.Infra.Interfaces;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Mappers;
using TesteXP.Usuarios.Application.Models.Entidades;
using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Repository
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly IUsuarioTableDataGateway _usuarioTableDataGateway;
        private readonly IEventoTableDataGateway _eventoTableDataGateway;
        private readonly IUnitOfWork _unitOfWork;

        public UsuarioRepository(
            IUsuarioTableDataGateway usuarioTableDataGateway,
            IUnitOfWork unitOfWork,
            IEventoTableDataGateway eventoTableDataGateway)
        {
            _usuarioTableDataGateway = usuarioTableDataGateway;
            _unitOfWork = unitOfWork;
            _eventoTableDataGateway = eventoTableDataGateway;
        }

        public async Task<bool> CadastroPermitido(string email, string nome)
        {
            UsuarioPO? usuario = await _usuarioTableDataGateway.ConsultarPorEmail(email);

            if (usuario is not null)
                return false;

            usuario = await _usuarioTableDataGateway.ConsultarPorNome(nome);

            if (usuario is not null)
                return false;

            return true;
        }

        public async Task<List<Usuario>> Consultar() => (await _usuarioTableDataGateway.Consultar()).ToUsuarioEntidade();

        public async Task<Usuario> ConsultarPorEmail(string email) => (await _usuarioTableDataGateway.ConsultarPorEmail(email)).ToUsuarioEntidade();

        public async Task<Usuario> ConsultarPorId(int usuarioId) => (await _usuarioTableDataGateway.ConsultarPorId(usuarioId)).ToUsuarioEntidade();

        public void Inativar(Usuario usuario)
        {
            _unitOfWork.AddDatabaseOperation(() =>
            {
                _usuarioTableDataGateway.AtualizarStatus((int)EStatusUsuario.Inativo, usuario.Id).Wait();
                _eventoTableDataGateway.Inserir(new EventoPO(ETipoEvento.USUARIO_INATIVADO, "USUARIO_INATIVADO", usuario.ToUsuarioPO())).Wait();
            });

            _unitOfWork.Commit();
        }

        public void Inserir(Usuario usuario)
        {
            _unitOfWork.AddDatabaseOperation(() =>
            {
                var po = usuario.ToUsuarioPO();

                _usuarioTableDataGateway.Inserir(po).Wait();
                _eventoTableDataGateway.Inserir(new EventoPO(ETipoEvento.USUARIO_CADASTRADO, "USUARIO_CADASTRADO", po)).Wait();
            });

            _unitOfWork.Commit();
        }
    }
}