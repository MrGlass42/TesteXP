using Microsoft.AspNetCore.Authorization;
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
        private readonly IInativarUsuarioService _inativarUsuarioService;

        public UsuariosController(
            ICadastrarUsuarioService cadastrarUsuarioService, 
            IConsultarUsuariosService consultarUsuariosSevice, 
            IInativarUsuarioService inativarUsuarioService)
        {
            _cadastrarUsuarioService = cadastrarUsuarioService;
            _consultarUsuariosSevice = consultarUsuariosSevice;
            _inativarUsuarioService = inativarUsuarioService;
        }

        [HttpPost]
        // [Authorize("IsAdmin")]
        public async Task<IActionResult> Cadastrar(CadastrarUsuarioRequest request)
        {
            await _cadastrarUsuarioService.Executar(request);
            return StatusCode(201);
        }

        [HttpGet]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Consultar() => Ok(await _consultarUsuariosSevice.Executar());

        [HttpPatch("inativar/{id:int}")]
        [Authorize("IsAdmin")]
        public async Task<IActionResult> Inativar(int id)
        {
            await _inativarUsuarioService.Processar(new ExcluirUsuarioRequest(id));
            return StatusCode(204);
        }
    }
}