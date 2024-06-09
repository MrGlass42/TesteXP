namespace TesteXP.Infra.Interfaces
{
    public interface IUnitOfWork
    {
        void AddDatabaseOperation(Action dbOperation);
        void Commit();
    }
}