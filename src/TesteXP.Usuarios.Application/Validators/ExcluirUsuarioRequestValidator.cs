using FluentValidation;
using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Validators
{
    public class ExcluirUsuarioRequestValidator : BaseValidator<ExcluirUsuarioRequest>
    {
        public ExcluirUsuarioRequestValidator()
        {
            RuleFor(x => x.Id)
                .NotEmpty().WithMessage("O id do usuário é obrigatório");
        }
    }
}