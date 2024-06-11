using FluentValidation;
using TesteXP.ProdutosFinanceiros.Application.Models.Requests;

namespace TesteXP.ProdutosFinanceiros.Application.Validators
{
    public class CadastrarProdutoFinanceiroRequestValidator : BaseValidator<CadastrarProdutoFinanceiroRequest>
    {
        public CadastrarProdutoFinanceiroRequestValidator()
        {
            RuleFor(x => x.Nome)
                .NotEmpty().WithMessage("O Nome do Usuário é obrigatório")
                .MaximumLength(200).WithMessage("O Nome do Usuário deve ter no máximo 200 caracteres");

            RuleFor(x => x.DataVencimento)
                .NotEmpty().WithMessage("A data de vencimento é obrigatrória");

            RuleFor(x => x.RendimentoDiario)
                .NotEmpty().WithMessage("o rendimento diario é obrigatrório");
                
            RuleFor(x => x.Valor)
                .NotEmpty().WithMessage("o valor é obrigatrório");
        }
    }
}