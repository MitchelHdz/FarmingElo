package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Bases.Base;

public class Register extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.html");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession respuesta = request.getSession(true);
        PrintWriter out = response.getWriter();
        //Declaro e inicio las variables
        String usern = new String(request.getParameter("username_fr").getBytes("ISO-8859-1"),"UTF-8");
        String email = new String(request.getParameter("email_fr").getBytes("ISO-8859-1"),"UTF-8");
        String pass = new String(request.getParameter("password_fr").getBytes("ISO-8859-1"),"UTF-8");
        String c_pass = new String(request.getParameter("rpassword_fr").getBytes("ISO-8859-1"),"UTF-8");
        String id_tu="";
        Base d = new Base();
        
        if(usern.isEmpty() || email.isEmpty() || pass.isEmpty() || c_pass.isEmpty()){
            respuesta.setAttribute("error", "Hay campos vacios...");
            
        } else if(pass.equals(c_pass))
        {
            try 
            {
                d.conectar();
                if(d.isEmailRegistered(email))
                {
                    respuesta.setAttribute("error", "Esta direccion de correo ya fue registrada");
                    response.sendRedirect("index.html");
                } else 
                {
                    d.registerUser(usern, email, pass, 3);
                    response.sendRedirect("index.html");
                }
                d.desconectar();    
            } catch (Exception e) 
            {
                out.println(e); 
            }
        }
    }
}
