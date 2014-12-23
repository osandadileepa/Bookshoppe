/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import Database.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Osanda Wedamulla
 */
public class Registration extends HttpServlet {

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
       
        String conpath = request.getContextPath();
        
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String userid = request.getParameter("username");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String conpassword = request.getParameter("confirmpassword");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String postal = request.getParameter("postal");
        String mobile = request.getParameter("phone");
        
        updateDb(fname,lname,email,userid,address,password,conpassword,city,country,postal,mobile);
        
        if(userid.isEmpty()){
         //response.sendRedirect(conpath+ "/index.jsp");   
         request.getRequestDispatcher("/login").forward(request,response);
         
        }
        else{  
          HttpSession session = request.getSession();
          session.setAttribute("username", userid);
          session.setAttribute("firstname", fname);
          session.setAttribute("lastname", lname);
          session.setAttribute("email", email);
          session.setAttribute("address", address);
          session.setAttribute("city", city);
          session.setAttribute("phone", mobile);
          //response.sendRedirect(conpath+"/store");
          request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
            
        }
    
      private void updateDb(String fname,String lname,String email,String userid, String address, String password, String conpassword,String city,String country,String postal,String mobile){
            
        try{
        String sql = "INSERT INTO register (First_Name, Last_Name, Username ,Email, Address, Password, Confirm_Password, City, Country, Postal_Code, Telephone_Number)"
                + " VALUES ('"+fname+"', '"+lname+"', '"+userid+"','"+email+"','"+address+"' ,'"+password+"','"+conpassword+"', '"+city+"','"+country+"' ,'"+postal+"','"+mobile+"')";
        
              
            Connection con=Dbconnection.getConnection();
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        
            }
        catch(Exception e){
            System.out.println(e); 
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
