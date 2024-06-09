using TesteXP.Infra.Interfaces;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;
using TesteXP.Usuarios.Application.TableDataGateway.Sql;

namespace TesteXP.Usuarios.Application.TableDataGateway
{
    public class EventoTableDataGateway : BaseTableDataGateway, IEventoTableDataGateway
    {
        public EventoTableDataGateway(IDatabaseConnection connection) : base(connection) { }

        public async Task FecharEvento(EventoPO evento) => await ExecutarComando(EventoTableDataGatewaySql.FECHAR_EVENTO, evento);

        public async Task<List<EventoPO>> ConsultarEventosNaoProcessados() =>
            await ExecutarConsultaComResultadoLista<EventoPO>(EventoTableDataGatewaySql.CONSULTAR_EVENTOS_NAO_PROCESSADOS);

        public async Task Inserir(EventoPO evento)
        {
            evento.Id = await ExecutarComando(EventoTableDataGatewaySql.INSERIR, evento);
        }
    }
}