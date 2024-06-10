using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Interfaces.Events;

public interface IEventHandler
{
    Task Handle(EventoPO evento);
}