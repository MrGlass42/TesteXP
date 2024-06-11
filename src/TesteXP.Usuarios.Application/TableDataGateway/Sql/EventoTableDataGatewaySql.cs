namespace TesteXP.Usuarios.Application.TableDataGateway.Sql
{
    public static class EventoTableDataGatewaySql
    {
        public static readonly string FECHAR_EVENTO = @"
            UPDATE 
                Evento 
            SET 
                Enviado = TRUE 
            WHERE 1=1
                AND Id = @Id;
        ";

        public static readonly string CONSULTAR_EVENTOS_NAO_PROCESSADOS = @"
            SELECT 
                * 
            FROM 
                Evento 
            WHERE 1=1 
                AND Enviado = FALSE 
            ORDER BY Data;
        ";

        public static readonly string INSERIR = @"
            INSERT INTO Evento 
                (IdUsuario, TipoEvento, UsuarioSnapshot, DescricaoEvento, Data, Enviado) 
            VALUES
                (@IdUsuario, @TipoEvento, @UsuarioSnapshot, @DescricaoEvento, NOW(), FALSE);
        ";
    }
}