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
    public String getIdtByUser(String user) throws SQLException
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
    public String getIdbyUser(String user) throws SQLException
    {
        String sql ="SELECT id_usuario from Usuarios WHERE username='"+user+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        {
            return rs.getString("id_usuario");
            
        }
        return null;
    }
    public String getImgbyUser(String user) throws SQLException
    {
        String sql ="SELECT url_foto from Usuarios WHERE username='"+user+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        {
            return rs.getString("url_foto");
            
        }
        return null;
    }
    
}
