using TesteXP.Usuarios.Application.Interfaces.Events;
using TesteXP.Usuarios.Application.Interfaces.Events.Handlers;
using TesteXP.Usuarios.Application.Models.Enum;
using TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects;

namespace TesteXP.Usuarios.Application.Events;

public class EventDispatcher : IEventDispatcher
{
    private readonly IDictionary<ETipoEvento, List<IEventHandler>> _eventDispatcherDictonary;

    public EventDispatcher(IUsuarioCadastradoKeyCloakHandler usuarioCadastradoKeyCloakHandler, IUsuarioInativadoKeycloakHandler usuarioInativadoKeycloakHandler)
    {
        _eventDispatcherDictonary = new Dictionary<ETipoEvento, List<IEventHandler>>
        {
            {
                ETipoEvento.USUARIO_CADASTRADO, new List<IEventHandler>
                {
                    usuarioCadastradoKeyCloakHandler,
                }
            },
            {
                ETipoEvento.USUARIO_INATIVADO, new List<IEventHandler>
                {
                    usuarioInativadoKeycloakHandler
                }
            },
        };
    }

    public void AddHandler(ETipoEvento tipoEvento, IEventHandler handler)
    {
        var eventHandlerList = _eventDispatcherDictonary[tipoEvento];

        eventHandlerList ??= new List<IEventHandler>();
        eventHandlerList.Add(handler);

        _eventDispatcherDictonary.Add(tipoEvento, eventHandlerList);
    }

    public async Task Notify(EventoPO evento)
    {
        var eventt = _eventDispatcherDictonary[evento.TipoEvento];
        foreach (var even in eventt)
            await even.Handle(evento);

    }

    public async Task NotifyMany(IEnumerable<EventoPO> eventos)
    {
        foreach (var evento in eventos)
            await Notify(evento);
    }
}