using Dapper;
using Serilog;
using TesteXP.Infra.Interfaces;
using TesteXP.ProdutosFinanceiros.Application.Interfaces;

namespace TesteXP.ProdutosFinanceiros.Application.TableDataGateway
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
                                CREATE TABLE IF NOT EXISTS ProdutoFinanceiro (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    Nome VARCHAR(200) NOT NULL,
                                    DisponivelParaVenda BOOL NOT NULL,
                                    Valor FLOAT NOT NULL,
                                    Status INT NOT NULL,
                                    RendimentoDiario FLOAT NOT NULL
                                    DataCadastro DATETIME NOT NULL,
                                    DataVencimento DATETIME NOT NULL
                                );

                                CREATE TABLE IF NOT EXISTS ProdutoUsuario (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    IdProdutoFinanceiro FLOAT NOT NULL,
                                    IdUsuario INTEGER NOT NULL,
                                    FOREIGN KEY (IdProdutoFinanceiro) REFERENCES ProdutoFinanceiro(Id),
                                    FOREIGN KEY (IdUsuario) REFERENCES Usuario(Id)
                                );

                                CREATE TABLE IF NOT EXISTS Saldo (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    Valor FLOAT NOT NULL,
                                    IdUsuario INTEGER NOT NULL,
                                    FOREIGN KEY (IdUsuario) REFERENCES Usuario(Id)
                                );

                                CREATE TABLE IF NOT EXISTS Venda (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    IdProdutoFinanceiro FLOAT NOT NULL,
                                    IdComprador INTEGER NOT NULL,
                                    IdVendedor INTEGER NOT NULL,
                                    DataVenda DATETIME NOT NULL,
                                    FOREIGN KEY (IdProdutoFinanceiro) REFERENCES ProdutoFinanceiro(Id),
                                    FOREIGN KEY (IdVendedor) REFERENCES Usuario(Id),
                                );

                                CREATE TABLE IF NOT EXISTS Extrato (
                                    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    IdProdutoFinanceiro FLOAT NOT NULL,
                                    ValorAnterior FLOAT NOT NULL,
                                    Rendimento FLOAT NOT NULL,
                                    DataReferencia DATETIME NOT NULL,
                                    FOREIGN KEY (IdProdutoFinanceiro) REFERENCES ProdutoFinanceiro(Id),
                                    FOREIGN KEY (IdVendedor) REFERENCES Usuario(Id)
                                );
                    ";

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