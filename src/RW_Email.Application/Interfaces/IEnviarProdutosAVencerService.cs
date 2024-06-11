using RW_Email.Application.Models.Requests;

namespace RW_Email.Application.Interfaces
{
    public interface IEnviarProdutosAVencerService
    {
        Task Enviar(EnviarProdutosAVencerRequest dadosEmail);
    }
}