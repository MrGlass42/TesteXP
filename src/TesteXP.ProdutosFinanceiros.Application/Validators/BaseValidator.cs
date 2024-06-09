using FluentValidation;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;

namespace TesteXP.ProdutosFinanceiros.Application.Validators
{
    public class BaseValidator<T> : AbstractValidator<T>, ICustomValidator<T>
    {
        public void ExecuteValidation(T obj)
        {
            this.ValidateAndThrow(obj);
        }
    }
}