namespace TesteXP.Usuarios.Application.TableDataGateway.PersistenceObjects
{
    public class UsuarioPO
    {
        public UsuarioPO() { }

        public UsuarioPO(string nome, string email, string hashSenha, int tipo, int status)
        {
            Tipo = tipo;
            Nome = nome;
            Email = email;
            Status = status;
            Senha = hashSenha;
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public int Tipo {get;set;}
        public string Email { get; set; }
        public string Senha { get; set; }
        public int Status { get; set; }
    }
}