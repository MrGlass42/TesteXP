using Microsoft.AspNetCore.Mvc;
using TesteXP.Usuarios.Application.Interfaces;
using TesteXP.Usuarios.Application.Models.Requests;


namespace TesteXP.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UsuariosController : ControllerBase
    {
        private readonly ICadastrarUsuarioService _cadastrarUsuarioService;
        private readonly IConsultarUsuariosService _consultarUsuariosSevice;
        private readonly IExcluirUsuarioService _excluirUsuarioService;

        public UsuariosController(
            ICadastrarUsuarioService cadastrarUsuarioService, 
            IConsultarUsuariosService consultarUsuariosSevice, 
            IExcluirUsuarioService excluirUsuarioService)
        {
            _cadastrarUsuarioService = cadastrarUsuarioService;
            _consultarUsuariosSevice = consultarUsuariosSevice;
            _excluirUsuarioService = excluirUsuarioService;
        }

        [HttpPost]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Cadastrar(CadastrarUsuarioRequest request)
        {
            await _cadastrarUsuarioService.Executar(request);
            return StatusCode(201);
        }

        [HttpGet]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Consultar() => Ok(await _consultarUsuariosSevice.Executar());

        [HttpDelete("{id:int}")]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Excluir(int id)
        {
            await _excluirUsuarioService.Processar(new ExcluirUsuarioRequest(id));
            return StatusCode(204);
        }
    }
}