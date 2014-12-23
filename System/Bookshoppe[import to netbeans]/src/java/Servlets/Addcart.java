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
public class Addcart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public double subTotal(double sub){
    
        return sub;
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String conpath = request.getContextPath();
        
        try {
            
            String bid = request.getParameter("bookid");
            String btitle = request.getParameter("bookname");
            String bprice = request.getParameter("unitprice");
            String bimage = request.getParameter("bookimage");
            String bavailability = request.getParameter("bookavailability");
            String bquantity = request.getParameter("bookquantity");

            Connection con=Dbconnection.getConnection();
            Statement st = con.createStatement();
            
            String table="CREATE TABLE IF NOT EXISTS Cart_Order (Order_Id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT, Book_Id VARCHAR(10) NOT NULL, Book_Name VARCHAR(50) NOT NULL, Price DECIMAL(50,2) NOT NULL, Image VARCHAR(50) NOT NULL, Availability INT(10) NOT NULL, Quantity INT(10) NOT NULL);";
                   
            st.executeUpdate(table);
            
            String insert="INSERT INTO Cart_Order (Book_Id , Book_Name, Price,Image, Availability, Quantity) VALUES ('"+bid+"', '"+btitle+"', '"+bprice+"', '"+bimage+"', '"+bavailability+"', '"+bquantity+"');";
            st.executeUpdate(insert);
            
            //response.sendRedirect(conpath+ "/cart");
            request.getRequestDispatcher("/cart").forward(request,response);
            
        } 
        catch(Exception e){
        
        }
        finally {            
            out.close();
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
