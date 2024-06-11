using FluentValidation;
using TesteXP.Usuarios.Application.Interfaces;

namespace TesteXP.Usuarios.Application.Validators
{
    public class BaseValidator<T> : AbstractValidator<T>, ICustomValidator<T>
    {
        public void ExecuteValidation(T obj)
        {
            this.ValidateAndThrow(obj);
        }
    }
}