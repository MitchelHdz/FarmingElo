package Bases;
import java.sql.*;

public class User extends Base
{
    public String getUserByEmail(String email) throws SQLException
    {
        String sql = "SELECT * FROM usuarios WHERE correo='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next())
        {
            return rs.getString("username");
            
        }
        
        return null;
    }
    public String getIdByUser(String user) throws SQLException
    {
        String sql = "SELECT id_tipo_usuario FROM usuarios WHERE username='"+user+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next())
        {
            return rs.getString("id_tipo_usuario");
            
        }
        
        return null;
    }
}
