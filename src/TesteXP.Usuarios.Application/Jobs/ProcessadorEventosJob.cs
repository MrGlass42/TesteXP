using Serilog;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Interfaces.Events;
using TesteXP.Usuarios.Application.Interfaces.Jobs;

namespace TesteXP.Usuarios.Application.Jobs
{
    public class ProcessadorEventosJob : IProcessadorEventosJob
    {
        private readonly IEventDispatcher _eventDispatcher;
        private readonly IEventoTableDataGateway _eventoTableDataGateway;

        public ProcessadorEventosJob(IEventDispatcher eventDispatcher, IEventoTableDataGateway eventoTableDataGateway)
        {
            _eventDispatcher = eventDispatcher;
            _eventoTableDataGateway = eventoTableDataGateway;
        }

        public void Execute() =>
            Processar().Wait();

        public async Task Processar()
        {
            try
            {
                var eventos = await _eventoTableDataGateway.ConsultarEventosNaoProcessados();

                if (eventos.Any())
                {
                    foreach (var evento in eventos)
                    {
                        await _eventDispatcher.Notify(evento);
                        await _eventoTableDataGateway.FecharEvento(evento);
                    }
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex, "erro ao processar eventos");
            }
        }
    }
}