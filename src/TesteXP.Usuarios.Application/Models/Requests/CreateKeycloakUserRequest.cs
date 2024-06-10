namespace TesteXP.Usuarios.Application.Models.Requests
{
    public class CreateKeycloakUserRequest
    {
        public string email { get; set; }
        public bool emailVerified { get; set; }
        public bool enabled { get; set; }
        public string username { get; set; }
        public string firstName { get; set; }
        public List<string> groups { get; set; }
        public List<Credentials> credentials { get; set; }
    }

    public class Credentials
    {
        public bool temporary { get; set; }
        public string type { get; set; }
        public string value { get; set; }
    }
}