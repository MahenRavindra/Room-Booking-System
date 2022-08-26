/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Modle.dbCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/**
 *
 * @author Acer
 */
public class register extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       // processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        //get form details
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cpassword= request.getParameter("confirmpassword");
        //Regular Expression for email
        String regex1 = "^(.+)@(.+)$";
        Pattern pattern1 = Pattern.compile(regex1);
        Matcher matcher1 = pattern1.matcher(email);
        boolean match1= matcher1.matches();
        //Regular Expression for password
        String  regex2= "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
        Pattern pattern2 = Pattern.compile(regex2);
        Matcher matcher2 = pattern1.matcher(password);
        boolean match2= matcher2.matches();
        //Email validation , Password validation , empty value validation
        if(!password.equals(cpassword) || match1==false||/*match2==false || */cpassword==null || password==null || email==null)
        {
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Please Enter Valid formated Details..');"); 
                  out.println("location='register.jsp';"); 
                  out.println("</script>");
        }
        else
        {
          try {
               dbCon con=new dbCon();
               boolean rslt=con.regUser(email, password);
               if(rslt==true)
               {
                   Cookie c1=new Cookie("userid",email);
                   response.addCookie(c1);
                   request.setAttribute("username",email);
                   
                  // response.sendRedirect("Home.jsp");
                   RequestDispatcher rd =request.getRequestDispatcher("Home.jsp");
                   rd.forward(request, response);
               }else
               {
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Invalid Details (SQL)...');"); 
                  out.println("location='register.jsp';"); 
                  out.println("</script>");
               }
             }
           catch(ClassNotFoundException | SQLException se)
          {
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Invalid Details (Error)');"); 
                  out.println("location='register.jsp';"); 
                  out.println("</script>");
          }
        } 
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
