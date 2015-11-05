package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bases.User;
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
                    String id_s = d.getIdtByUser(NombreUsuario);
                    int idu = Integer.parseInt(id_s);
                    String foto_url =d.getImgbyUser(NombreUsuario);
                    String id = d.getIdbyUser(NombreUsuario);
                    
                    respuesta.setAttribute("Usuario", NombreUsuario);
                    respuesta.setAttribute("Correo", cor);
                    respuesta.setAttribute("Nivel", String.valueOf(idu));
                    respuesta.setAttribute("Foto", foto_url);
                    respuesta.setAttribute("Id", String.valueOf(id));
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
