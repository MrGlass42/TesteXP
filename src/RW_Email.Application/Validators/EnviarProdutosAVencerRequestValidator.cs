using FluentValidation;
using RW_Email.Application.Models.Requests;

namespace RW_Email.Application.Validators
{
    public class EnviarProdutosAVencerRequestValidator : BaseValidator<EnviarProdutosAVencerRequest>
    {
        public EnviarProdutosAVencerRequestValidator()
        {
            RuleFor(x => x.Produtos)
                .NotEmpty().WithMessage("o campo produtos é obrigatorio");

            RuleFor(x => x.Emails)
                .NotEmpty().WithMessage("o campo emails é obrigatorio");
        }
    }
}