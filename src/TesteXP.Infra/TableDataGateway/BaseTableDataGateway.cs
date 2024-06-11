using System.Data;
using Dapper;
using TesteXP.Infra.Interfaces;

namespace TesteXP.Infra.TableDataGateway
{
    public class BaseTableDataGateway
    {
        private readonly IDatabaseConnection _connection;

        public BaseTableDataGateway(IDatabaseConnection connection) =>
            _connection = connection;

        public IDbConnection GetConnection()
        {
            if (_connection is null)
                throw new Exception("conexão não foi inicializada...");

            return _connection.GetConnection();
        }

        protected async Task ExecutarComando(string sql) => await _connection.GetConnection().ExecuteAsync(sql);
        protected async Task<int> ExecutarComando<T>(string sql, T objeto) => await _connection.GetConnection().ExecuteScalarAsync<int>(sql, objeto);
        protected async Task<List<T>> ExecutarConsultaComResultadoLista<T>(string sql) =>
            (await _connection.GetConnection().QueryAsync<T>(sql)).ToList();
        protected async Task<List<T>> ExecutarConsultaComResultadoLista<T>(string sql, object parameters) =>
            (await _connection.GetConnection().QueryAsync<T>(sql, parameters)).ToList();
        protected async Task<T?> ExecutarConsultaComUmResultado<T>(string sql) =>
            await _connection.GetConnection().QuerySingleOrDefaultAsync<T>(sql);
        protected async Task<T?> ExecutarConsultaComUmResultado<T>(string sql, object parameters) =>
            await _connection.GetConnection().QuerySingleOrDefaultAsync<T>(sql, parameters);
    }
}