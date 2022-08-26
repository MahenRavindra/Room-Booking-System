package Controller;

import Modle.dbCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        try {
               dbCon con=new dbCon();
               boolean rslt=con.checkUser(email, pass);
               if(rslt==true)
               { 
                   Cookie ck=new Cookie("userid",email);
                   response.addCookie(ck);
                   request.setAttribute("username", email);
                 //  response.sendRedirect("Home.jsp");
                   RequestDispatcher rd =request.getRequestDispatcher("Home.jsp");
                   rd.forward(request, response);
               }
                  else
                    {
                        out.println("<script type=\"text/javascript\">"); 
                        out.println("alert('Username or Password incorrect...');"); 
                        out.println("location='index.jsp';"); 
                        out.println("</script>");

                    }
           }
        catch(Exception se) {
            se.printStackTrace();
        }   
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
