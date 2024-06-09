using FluentValidation;
using TesteXP.Usuarios.Application.Models.Requests;

namespace TesteXP.Usuarios.Application.Validators
{
    public class CadastrarUsuarioRequestValidator : BaseValidator<CadastrarUsuarioRequest>
    {
        public CadastrarUsuarioRequestValidator()
        {
            RuleFor(x => x.Nome)
                .NotEmpty().WithMessage("O Nome do Usuário é obrigatório")
                .MaximumLength(200).WithMessage("O Nome do Usuário deve ter no máximo 200 caracteres");

            RuleFor(x => x.Tipo)
                .IsInEnum().WithMessage("tpo de usuario invalido")
                .NotNull().WithMessage("O tipo do usuario não pode ser nulo");

            RuleFor(x => x.Email)
                .NotEmpty()
                .WithMessage("O Email do Usuário é obrigatório")
                .EmailAddress()
                .WithMessage("O Email do Usuário deve ser um endereço de email válido")
                .MaximumLength(200).WithMessage("O Email do Usuário deve ter no máximo 200 caracteres");
        }
    }
}