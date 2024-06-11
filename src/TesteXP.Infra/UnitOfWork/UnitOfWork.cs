using System.Transactions;
using TesteXP.Infra.Interfaces;

namespace TesteXP.Infra
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly List<Action> _dbOperations;

        public UnitOfWork()
        {
            _dbOperations = new List<Action>();
        }

        public void AddDatabaseOperation(Action dbOperation) => _dbOperations.Add(dbOperation);

        public void Commit()
        {
            if (_dbOperations.Count > 0)
            {
                using (var transaction = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled))
                {
                    foreach (var dbOperation in _dbOperations)
                        dbOperation();

                    transaction.Complete();
                }

                _dbOperations.Clear();
            }
        }
    }
}