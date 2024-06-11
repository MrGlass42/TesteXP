namespace RW_Email.Application.Models.Responses
{
    public class BaseResponse<T>
    {
        public bool Sucesso { get; set; }
        public T? Dados { get; set; }

        public static BaseResponse<T> DefinirRespostaComoBemSucedida(T dadosParaResposta)
        {
            return new BaseResponse<T>
            {
                Sucesso = true,
                Dados = dadosParaResposta
            };
        }

        public static BaseResponse<T> DefinirRespostaComoMalSucedida(T dadosParaResposta)
        {
            return new BaseResponse<T>
            {
                Sucesso = false,
                Dados = dadosParaResposta
            };
        }
    }
}