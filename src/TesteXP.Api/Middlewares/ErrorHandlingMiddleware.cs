using System.Net;
using System.Text.Json;
using FluentValidation;
using Serilog;
using TesteXP.Api.Exceptions;
using TesteXP.Usuarios.Application.Exceptions;

namespace TesteXP.Api.Middlewares
{
    public class ErrorHandlingMiddleware
    {
        private readonly RequestDelegate next;
        private static readonly List<Type> _userAppExceptions = new List<Type>
        {
            typeof(CadastroNegadoException),
            typeof(UsuarioNaoEncontradoException),
        };

        public ErrorHandlingMiddleware(RequestDelegate next) => this.next = next;

        public async Task Invoke(HttpContext context)
        {
            try { await next(context); }
            catch (Exception ex) { await HandleExceptionAsync(context, ex); }
        }

        private static Task HandleExceptionAsync(HttpContext context, Exception exception)
        {
            var code = HttpStatusCode.InternalServerError;

            if (exception is ValidationException || exception is EmailInvalidoException || IsUserAppException(exception))
                code = HttpStatusCode.BadRequest;

            if(code == HttpStatusCode.InternalServerError)
                Log.Error(exception, exception.Message);
            else
                Log.Warning(exception, exception.Message);

            var resposta = BaseResponse<string>.DefinirRespostaComoMalSucedida(exception.Message);
            var result = JsonSerializer.Serialize(resposta);

            context.Response.ContentType = "application/json";
            context.Response.StatusCode = (int)code;

            return context.Response.WriteAsync(result);
        }

        private static bool IsUserAppException(Exception receivedExeception) =>
            _userAppExceptions.Any(x => receivedExeception.GetType() == x);
    }
}