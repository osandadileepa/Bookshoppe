/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import Database.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Osanda Wedamulla
 */
public class Login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
       
        PrintWriter out = response.getWriter();
        String userid = request.getParameter("inputusername");
        String password = request.getParameter("inputpassword");
        String conpath = request.getContextPath();
        
        if(userid.equals("admin") && password.equals("admin") ){
                //response.sendRedirect(conpath+ "/orderrecieved");
                request.getRequestDispatcher("/orderrecieved").forward(request,response);
            }
        
        
        try {
            String sql = "SELECT * FROM register WHERE Username='"+userid+"';";
            ResultSet rs = Dbconnection.query(sql);
                        
            while (rs.next()) {
                    
                if (userid.equals(rs.getString(3)) && password.equals(rs.getString(6))) {
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("username", userid);
                    session.setAttribute("password", password);
                    session.setAttribute("firstname", rs.getString(1));
                    session.setAttribute("lastname", rs.getString(2));
                    session.setAttribute("email", rs.getString(4));
                    session.setAttribute("address", rs.getString(5));
                    session.setAttribute("city", rs.getString(8));
                    session.setAttribute("phone", rs.getString(11));
                    
                    //response.sendRedirect(conpath+ "/index.jsp");
                    request.getRequestDispatcher("/index.jsp").forward(request,response);
                            
                    break;
                }
                
            }
            request.setAttribute("error", "Wrong User name or password");
            response.sendRedirect(conpath+"/404page");

        } 
        catch (Exception e) 
        {
      
        }
        
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
