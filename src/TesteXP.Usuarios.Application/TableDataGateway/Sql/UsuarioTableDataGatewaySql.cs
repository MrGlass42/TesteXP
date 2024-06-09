namespace TesteXP.Usuarios.Application.TableDataGateway.Sql
{
    public static class UsuarioTableDataGatewaySql
    {
        public const string CADASTRAR_USUARIO = @"
            INSERT INTO 
                Usuario 
                    (Nome, Tipo, Status, Email, Senha) 
                VALUES 
                    (@Nome, @Tipo, @Status, @Email, @Senha); 
            SELECT LAST_INSERT_ID();
        ";

        public const string CONSULTAR_USUARIOS = @"
            SELECT 
                * 
            FROM 
                Usuario
            ORDER BY Id DESC, Status ASC;
        ";

        public const string CONSULTAR_POR_ID = @"
            SELECT 
                * 
            FROM 
                Usuario 
            WHERE 1=1
                AND Id = @Id;
        ";

        public const string ATUALIZAR_STATUS = @"
            UPDATE 
                Usuario
            SET 
                Status = @Status
            WHERE 1=1
                AND Id = @Id;
        ";

        public const string CONSULTAR_USUARIO_POR_EMAIL = @"
            SELECT 
                *
            FROM
                Usuario
            WHERE 1=1
                AND LOWER(Email) = LOWER(@Email);
        ";

        public const string EXCLUIR_USUARIO = @"
            DELETE FROM 
                Usuario
            WHERE Id = @Id;
        ";
    }
}