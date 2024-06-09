using Dapper;
using Serilog;
using TesteXP.Infra.Interfaces;
using TesteXP.Usuarios.Application.Interfaces;

namespace TesteXP.Usuarios.Application.TableDataGateway
{
    public class CreateDatabaseService : ICreateDatabaseService
    {
        private readonly IDatabaseConnection _dbConnection;
        public CreateDatabaseService(IDatabaseConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }

        public async Task CreateDatabase()
        {
            try
            {
                using (var con = _dbConnection.GetConnection())
                {
                    string sql = @"
                                CREATE TABLE IF NOT EXISTS Usuario (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    Nome VARCHAR(200) NOT NULL,
                                    Tipo INTEGER NOT NULL,
                                    Status INT NOT NULL,
                                    Email VARCHAR(200) NOT NULL UNIQUE,
                                    Senha VARCHAR(200) NOT NULL
                                );

                                CREATE TABLE IF NOT EXISTS Evento (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    IdUsuario INT NOT NULL,
                                    UsuarioSnapshot TEXT NOT NULL,
                                    Enviado BOOLEAN NOT NULL,
                                    TipoEvento INT NOT NULL,
                                    DescricaoEvento VARCHAR(100) NOT NULL,
                                    Data DATETIME NOT NULL
                                );";

                    await con.ExecuteScalarAsync(sql);
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Erro ao iniciar serviço de criação da base de dados");
                throw;
            }
        }
    }
}