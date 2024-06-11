namespace RW_Email.Application.Interfaces
{
    public interface ICustomValidator<T>
    {
        public void ExecuteValidation(T obj);
    }
}