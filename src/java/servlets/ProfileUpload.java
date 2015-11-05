/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.*;
import Bases.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno
 */
public class ProfileUpload extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "C:/Users/Vero/Documents/Farming-Elo/web/img-profile";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String urlb = "img-profile/";
            String nada="";
            HttpSession session = request.getSession();
            String nom_se = (String) request.getSession().getAttribute("Usuario");
            
        if(ServletFileUpload.isMultipartContent(request)){
            PrintWriter out=response.getWriter();
            String url="";
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        item.write(new File(UPLOAD_DIRECTORY + "/" +name));
                        String urlc=nada+=name;
                        url=urlb+ urlc;
                    }
                }
                out.print(url);
               //subido
                out.println("subido en eichdi");
                
                User c = new User();
                
                //nombre
                
                Statement s;
                s = c.conectar().createStatement();
                ResultSet rs;
                rs = s.executeQuery("select id_usuario from Usuarios where username = '"+nom_se+"';");
                
                rs.next();
                String id = rs.getString("id_usuario");
                
                String query = "update Usuarios set url_foto = '"+url+"' where id_usuario = '"+id+"';";
                s.executeUpdate(query);
                
            } catch (Exception ex) {
                response.sendRedirect("index.html");
                session.invalidate();
            }          
         
        }else{
        }
        //request.getRequestDispatcher("/result.jsp").forward(request, response);response.setContentType("text/html;charset=UTF-8");
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
