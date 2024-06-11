namespace RW_Email.Application.Interfaces
{
    public interface IEmailProviders<T> where T : class
    {
        Task DispacharEmail(T email);
    }
}