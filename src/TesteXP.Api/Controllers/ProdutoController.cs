using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces.Services;
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
        private readonly IExtratoRecenteService _extratoRecenteService;
        private readonly IConsultarProdutosPorInvestidor _consultarProdutosPorInvestidor;
        private readonly IAtualizarDisponivelPraVenda _atualizarDisponivelPraVenda;
        private readonly IConsultarTodosOsProdutos _consultarTodosOsProdutos;

        public ProdutoController(
            IAtivarProdutoService ativarProdutoService,
            IAtualizarProdutoFinanceiroService atualizarProdutoFinanceiroService,
            ICadastrarProdutoFinanceiroService cadastrarProdutoFinanceiroService,
            IConsultarProdutoPorIdService consultarProdutoPorIdService,
            IConsultarProdutosDisponiveisPraVenda consultarProdutosDisponiveisPraVenda,
            IInativarProdutoService inativarProdutoService,
            IExtratoRecenteService extratoRecenteService,
            IConsultarProdutosPorInvestidor consultarProdutosPorInvestidor,
            IAtualizarDisponivelPraVenda atualizarDisponivelPraVenda,
            IConsultarTodosOsProdutos consultarTodosOsProdutos)
        {
            _ativarProdutoService = ativarProdutoService;
            _atualizarProdutoFinanceiroService = atualizarProdutoFinanceiroService;
            _cadastrarProdutoFinanceiroService = cadastrarProdutoFinanceiroService;
            _consultarProdutoPorIdService = consultarProdutoPorIdService;
            _consultarProdutosDisponiveisPraVenda = consultarProdutosDisponiveisPraVenda;
            _inativarProdutoService = inativarProdutoService;
            _extratoRecenteService = extratoRecenteService;
            _consultarProdutosPorInvestidor = consultarProdutosPorInvestidor;
            _atualizarDisponivelPraVenda = atualizarDisponivelPraVenda;
            _consultarTodosOsProdutos = consultarTodosOsProdutos;
        }

        [HttpPost]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Cadastrar(CadastrarProdutoFinanceiroRequest request)
        {
            await _cadastrarProdutoFinanceiroService.Executar(request);
            return StatusCode(201);
        }

        [HttpGet("todos")]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> ConsultarTodosOsProdutos() => Ok(await _consultarTodosOsProdutos.Consultar());

        [HttpPut]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Atualizar(AtualizarProdutoFinanceiroRequest request)
        {
            await _atualizarProdutoFinanceiroService.Atualizar(request);
            return Ok();
        }

        [HttpGet("{id:int}")]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Consultar(int id) => Ok(await _consultarProdutoPorIdService.ConsultarPorId(id));

        [HttpPatch("inativar/{id:int}")]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Inativar(int id)
        {
            await _inativarProdutoService.Inativar(id);
            return Ok();
        }

        [HttpPatch("ativar/{id:int}")]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Ativar(int id)
        {
            await _ativarProdutoService.Ativar(id);
            return Ok();
        }

        [HttpGet("extrato")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> Extrato() 
        {
            string email = HttpContext.GetEmailFromAccessToken();
            var extrato = await _extratoRecenteService.Consultar(email);

            return Ok(extrato);
        }

        [HttpGet("meus_produtos")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> ConsultarProdutosInvestidor() 
        {
            string email = HttpContext.GetEmailFromAccessToken();
            var produtos = await _consultarProdutosPorInvestidor.Consultar(email);

            return Ok(produtos);
        }

        [HttpPatch("disponivel/{status:bool}/{produtoId:int}")]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> AtualizarDisponibilidade(bool status, int produtoId) 
        {
            string email = HttpContext.GetEmailFromAccessToken();
            await _atualizarDisponivelPraVenda.Atualizar(email, status, produtoId);

            return Ok();
        }

        [HttpGet]
        [Authorize("TodosPodemAcessar")]
        public async Task<IActionResult> Consultar() => Ok(await _consultarProdutosDisponiveisPraVenda.Consultar());
    }
}