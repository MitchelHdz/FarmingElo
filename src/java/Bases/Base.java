package Bases;
import java.sql.*;
public class Base {
    public Connection conexion;
    public Statement s;
    public final static String userDb = "root";
    public final static String passDb = "n0m3l0";
    
    //Conectar a la Base de datos
    public Connection conectar() throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        conexion=DriverManager.getConnection("jdbc:mysql://localhost/farmingelo",userDb, passDb);
        return conexion;
    }
    
    //Desconectar a la Base de datos
    public void desconectar() throws SQLException, ClassNotFoundException{
        conexion.close();
    }
    
    //Metodo para consultar si un email y contraseñan pertenecen a una cuenta registrada
    public boolean isAcountExists(String email, String password) throws SQLException{
        String sql = "SELECT * FROM usuarios WHERE correo='"+email+"' AND contraseña='"+password+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        return rs.next();
    }
    
    //Metodo para consultar si el email recibido ya esta registrado
    public boolean isEmailRegistered(String email) throws SQLException{
        String sql = "SELECT * FROM usuarios WHERE correo='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        return rs.next();
    }
    
    //Metodo para registrar una cuenta
    public void registerUser(String name, String email, String password, int id_tu ) throws SQLException{
        String sql = "INSERT INTO `usuarios`(`username`,`correo`,`contraseña`, `id_tipo_usuario`) VALUES ('"+name+"','"+email+"','"+password+"','"+id_tu+"')";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.executeUpdate();
    }
}
