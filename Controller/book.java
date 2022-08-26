package Controller;

import Modle.dbCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class book extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet book</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet book at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String roomno=request.getParameter("room");
        Cookie ck[]=request.getCookies(); 
        if(ck!=null){
        String name=ck[0].getValue();
        //ck[0].setMaxAge(0);
        
        dbCon con=new dbCon();
        try {
           String status= con.checkRoom(roomno);
           
           if(status.equals("0"))
           {         
                   /*Cookie ck1=new Cookie("details",roomno);
                   response.addCookie(ck1);
                   request.setAttribute("roomno", roomno);
                   RequestDispatcher rd =request.getRequestDispatcher("Roombook.jsp");
                   rd.forward(request, response);*/            
            
                  con.updateRoomStatus(roomno);                 
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Room Booked Succesfully');"); 
                  out.println("location='Home.jsp';"); 
                  out.println("</script>");
                   
           }
            if(status.equals("1"))
           {
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Room Already Booked.Please try Another Room.');"); 
                  out.println("location='Home.jsp';"); 
                  out.println("</script>");
           }
           
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(book.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        else
        {        
                  out.println("<script type=\"text/javascript\">"); 
                  out.println("alert('Login First.');"); 
                  out.println("location='index.jsp';"); 
                  out.println("</script>");  
                  RequestDispatcher rd =request.getRequestDispatcher("Home.jsp");
                  rd.include(request, response);
                  RequestDispatcher rd1 =request.getRequestDispatcher("index.jsp");
                  rd1.forward(request, response);                
        }
           
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
