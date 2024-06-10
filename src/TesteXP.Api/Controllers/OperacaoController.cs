using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;

namespace TesteXP.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OperacaoController : ControllerBase
    {
        private readonly ICompraService _compraService;

        public OperacaoController(ICompraService compraService)
        {
            _compraService = compraService;
        }

        [HttpPost("comprar/{produtoFinanceiroId:int}")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> Registrar(int produtoFinanceiroId)
        {
            string email = HttpContext.GetEmailFromAccessToken();
            await _compraService.Executar(email, produtoFinanceiroId);

            return StatusCode(201);
        }
    }
}