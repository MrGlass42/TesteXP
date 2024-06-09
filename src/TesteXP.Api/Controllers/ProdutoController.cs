using Microsoft.AspNetCore.Mvc;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;


namespace TesteXP.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProdutoController : ControllerBase
    {
        private readonly IAtivarProdutoService _ativarProdutoService;
        private readonly IAtualizarProdutoFinanceiroService _atualizarProdutoFinanceiroService;
        private readonly ICadastrarProdutoFinanceiroService _cadastrarProdutoFinanceiroService;
        private readonly IConsultarProdutoPorIdService _consultarProdutoPorIdService;
        private readonly IConsultarProdutosDisponiveisPraVenda _consultarProdutosDisponiveisPraVenda;
        private readonly IInativarProdutoService _inativarProdutoService;

        public ProdutoController(
            IAtivarProdutoService ativarProdutoService, 
            IAtualizarProdutoFinanceiroService atualizarProdutoFinanceiroService, 
            ICadastrarProdutoFinanceiroService cadastrarProdutoFinanceiroService, 
            IConsultarProdutoPorIdService consultarProdutoPorIdService, 
            IConsultarProdutosDisponiveisPraVenda consultarProdutosDisponiveisPraVenda, 
            IInativarProdutoService inativarProdutoService)
        {
            _ativarProdutoService = ativarProdutoService;
            _atualizarProdutoFinanceiroService = atualizarProdutoFinanceiroService;
            _cadastrarProdutoFinanceiroService = cadastrarProdutoFinanceiroService;
            _consultarProdutoPorIdService = consultarProdutoPorIdService;
            _consultarProdutosDisponiveisPraVenda = consultarProdutosDisponiveisPraVenda;
            _inativarProdutoService = inativarProdutoService;
        }

        [HttpPost]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Cadastrar(CadastrarProdutoFinanceiroRequest request)
        {
            await _cadastrarProdutoFinanceiroService.Executar(request);
            return StatusCode(201);
        }

        [HttpPut]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Atualizar(AtualizarProdutoFinanceiroRequest request)
        {
            await _atualizarProdutoFinanceiroService.Atualizar(request);
            return StatusCode(200);
        }

        [HttpGet]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Consultar() => Ok(await _consultarProdutosDisponiveisPraVenda.Consultar());

        [HttpGet("{id:int}")]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Consultar(int id) => Ok(await _consultarProdutoPorIdService.ConsultarPorId(id));

        [HttpPatch("inativar/{id:int}")]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Inativar(int id)
        {
            await _inativarProdutoService.Inativar(id);
            return Ok();
        }

        [HttpPatch("ativar/{id:int}")]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Ativar(int id)
        {
            await _ativarProdutoService.Ativar(id);
            return Ok();
        }
    }
}