using Newtonsoft.Json;
using RW_Email.Application.Models.Responses;
using Serilog;
using System.ComponentModel.DataAnnotations;
using System.Net;

namespace RW_Email.Api.Middlewares
{
    public class ErrorHandlingMiddleware
    {
        private readonly RequestDelegate next;

        public ErrorHandlingMiddleware(RequestDelegate next) => this.next = next;

        public async Task Invoke(HttpContext context)
        {
            try { await next(context); }
            catch (Exception ex) { await HandleExceptionAsync(context, ex); }
        }

        private static Task HandleExceptionAsync(HttpContext context, Exception exception)
        {
            var code = HttpStatusCode.InternalServerError;

            if (exception is ValidationException)
                code = HttpStatusCode.BadRequest;

            Log.Error(exception, exception.Message);

            var resposta = BaseResponse<string>.DefinirRespostaComoMalSucedida(exception.Message);
            var result = JsonConvert.SerializeObject(resposta);

            context.Response.ContentType = "application/json";
            context.Response.StatusCode = (int)code;

            return context.Response.WriteAsync(result);
        }
    }
}