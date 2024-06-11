using Microsoft.AspNetCore.Mvc;
using RW_Email.Application.Interfaces;
using RW_Email.Application.Models.Requests;

namespace RW_Email.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class EmailController : ControllerBase
    {
        private readonly IEnviarProdutosAVencerService _enviarProdutosAVencerService;

        public EmailController(IEnviarProdutosAVencerService enviarProdutosAVencerService)
        {
            _enviarProdutosAVencerService = enviarProdutosAVencerService;
        }


        [HttpPost]
        public async Task<IActionResult> ConfirmarEmail(EnviarProdutosAVencerRequest request)
        {
            await _enviarProdutosAVencerService.Enviar(request);
            return StatusCode(201);
        }
    }
}