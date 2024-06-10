using TesteXP.Infra.Interfaces;
using TesteXP.Infra.TableDataGateway;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;
using TesteXP.Usuarios.Application.TableDataGateway.Sql;

namespace TesteXP.Usuarios.Application.TableDataGateway
{
    public class UsuarioTableDataGateway : BaseTableDataGateway, IUsuarioTableDataGateway
    {
        public UsuarioTableDataGateway(IDatabaseConnection connection) : base(connection) { }

        public async Task AtualizarStatus(int status, int usuarioId) =>
            await ExecutarComando(UsuarioTableDataGatewaySql.ATUALIZAR_STATUS, new { Status = status, Id = usuarioId });

        public async Task<List<UsuarioPO>> Consultar() =>
            await ExecutarConsultaComResultadoLista<UsuarioPO>(UsuarioTableDataGatewaySql.CONSULTAR_USUARIOS);

        public async Task<UsuarioPO?> ConsultarPorEmail(string email) =>
            await ExecutarConsultaComUmResultado<UsuarioPO>(UsuarioTableDataGatewaySql.CONSULTAR_USUARIO_POR_EMAIL, new { Email = email });

        public async Task<UsuarioPO?> ConsultarPorId(int usuarioId) =>
            await ExecutarConsultaComUmResultado<UsuarioPO>
                    (UsuarioTableDataGatewaySql.CONSULTAR_POR_ID, new { Id = usuarioId });

        public async Task<UsuarioPO?> ConsultarPorNome(string nome) =>
            await ExecutarConsultaComUmResultado<UsuarioPO>(UsuarioTableDataGatewaySql.CONSULTAR_POR_NOME, new {Nome = nome});

        public async Task Excluir(int id) =>
            await ExecutarComando(UsuarioTableDataGatewaySql.EXCLUIR_USUARIO, new { Id = id });

        public async Task Inserir(UsuarioPO usuario) =>
            usuario.Id = await ExecutarComando(UsuarioTableDataGatewaySql.CADASTRAR_USUARIO, usuario);
    }
}