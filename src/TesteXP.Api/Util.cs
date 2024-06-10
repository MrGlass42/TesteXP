using System.IdentityModel.Tokens.Jwt;

namespace TesteXP.Api
{
    public static class Util
    {
         public static string GetEmailFromAccessToken(this HttpContext context) =>
            context.GetAccessTokenString().GetEmailFromTokenString();
            
        private static string GetAccessTokenString(this HttpContext context) =>
            context.Request.Headers["Authorization"]
                .ToString()
                .Split(" ")
                .Last();

        private static string GetEmailFromTokenString(this string accessToken)
        {
            var jwtSecurityToken = new JwtSecurityTokenHandler().ReadJwtToken(accessToken);
            var emailClaim = jwtSecurityToken.Claims.First(claim => claim.Type == "email");

            if (emailClaim is null || emailClaim.Value.IsValidEmail() is false)
                throw new Exception("email recebido no token não é um email válido");

            return emailClaim.Value;
        }

        public static bool IsValidEmail(this string email)
        {
            var trimmedEmail = email.Trim();

            if (trimmedEmail.EndsWith("."))
                return false;

            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == trimmedEmail;
            }
            catch { return false; }
        }
    }
}