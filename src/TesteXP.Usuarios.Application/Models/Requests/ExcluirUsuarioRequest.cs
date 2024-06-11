namespace TesteXP.Usuarios.Application.Models.Requests
{
    public class ExcluirUsuarioRequest
    {
        public ExcluirUsuarioRequest(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}