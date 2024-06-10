using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Interfaces.Events;

public interface IEventDispatcher
{
    Task NotifyMany(IEnumerable<EventoPO> eventos);
        Task Notify(EventoPO evento);
}