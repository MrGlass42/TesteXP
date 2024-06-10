namespace TesteXP.Usuarios.Application.Models.Reponses;

public class KeycloakUserResponse
{
    public string id { get; set; }
    public string createdTimestamp { get; set; }
    public string username { get; set; }
    public bool enabled { get; set; }
    public bool totp { get; set; }
    public bool emailVerified { get; set; }
    public string email { get; set; }
}