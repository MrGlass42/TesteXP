namespace TesteXP.ProdutosFinanceiros.Application.Interfaces
{
    public interface ICustomValidator<T>
    {
        public void ExecuteValidation(T obj);
    }
}