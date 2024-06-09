 using System.Data;
using Microsoft.Extensions.Configuration;
using MySql.Data.MySqlClient;
using TesteXP.Infra.Interfaces;

namespace TesteXP.Infra
{
    public class DatabaseConnection : IDatabaseConnection
    {
        private readonly IDbConnection _dbConnection;

        public DatabaseConnection(IConfiguration configuration)
        {
            string databaseConnectionString = configuration["ConnectionStrings:Default"]!;

            if (string.IsNullOrEmpty(databaseConnectionString))
                throw new Exception("Valor nulo para Database connection string encontrado");

            _dbConnection = new MySqlConnection(databaseConnectionString);
        }

        public IDbConnection GetConnection()
        {
            if (_dbConnection.State != ConnectionState.Open)
                _dbConnection.Open();

            return _dbConnection;
        }
    }

}