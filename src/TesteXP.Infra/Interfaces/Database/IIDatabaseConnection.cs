using System.Data;

namespace TesteXP.Infra.Interfaces
{
    public interface IDatabaseConnection
    {
        public IDbConnection GetConnection();
    }
}