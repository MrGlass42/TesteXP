using FluentValidation;
using RW_Email.Application.Interfaces;

namespace RW_Email.Application.Validators
{
    public class BaseValidator<T> : AbstractValidator<T>, ICustomValidator<T>
    {
        public void ExecuteValidation(T obj)
        {
            this.ValidateAndThrow(obj);
        }
    }
}
