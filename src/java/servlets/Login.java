package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bases.User;
import static java.lang.System.console;
import static java.lang.System.out;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.html");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession respuesta = request.getSession(true);
        String cor = new String(request.getParameter("email_fl").getBytes("ISO-8859-1"),"UTF-8");
        String con = new String(request.getParameter("password_fl").getBytes("ISO-8859-1"),"UTF-8");
        User d = new User();
        
        if (cor.isEmpty() || con.isEmpty()) {
            response.sendRedirect("index.html");
        } else 
        {
            try 
            {
                d.conectar();
                if (d.isAcountExists(cor, con)) 
                {
                    String NombreUsuario = d.getUserByEmail(cor);
                    String id_s = d.getIdByUser(NombreUsuario);
                    int id = Integer.parseInt(id_s);
                    respuesta.setAttribute("Usuario", NombreUsuario);
                    respuesta.setAttribute("Correo", cor);
                    respuesta.setAttribute("Nivel", id);
                    response.sendRedirect("profile.jsp");
                } else 
                {
                    response.sendRedirect("index.html");
                    out.print("No existe");
                }
                
                d.desconectar();
                
            } catch (Exception e) 
            {
                out.println(e);
            }    
        }
    }
    
}
