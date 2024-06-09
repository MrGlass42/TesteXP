using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Interfaces
{
    public interface IEventoTableDataGateway
    {
        Task Inserir(EventoPO evento);
        Task FecharEvento(EventoPO evento);
        Task<List<EventoPO>> ConsultarEventosNaoProcessados();
    }
}