using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

namespace TesteXP.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OperacaoController : ControllerBase
    {
        private readonly ICompraService _compraService;
        private readonly IAlimentarExtratoFake _alimentarExtratoFake;

        public OperacaoController(ICompraService compraService, IAlimentarExtratoFake alimentarExtratoFake)
        {
            _compraService = compraService;
            _alimentarExtratoFake = alimentarExtratoFake;

        }

        [HttpPost("comprar/{produtoFinanceiroId:int}")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> Registrar(int produtoFinanceiroId)
        {
            string email = HttpContext.GetEmailFromAccessToken();
            await _compraService.Executar(email, produtoFinanceiroId);

            return StatusCode(201);
        }

        [HttpPost("fake")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> Fake() 
        {
            await _alimentarExtratoFake.Alimentar();
            return StatusCode(201);
        }
    }
}