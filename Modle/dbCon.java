package Modle;
import java.sql.*;

public class dbCon {
     private Connection createConnection() throws ClassNotFoundException, SQLException
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                return con;
            }
     public  boolean checkUser(String email,String password) 
                {
                  boolean st =false;
                  try {                    
                      PreparedStatement ps = createConnection().prepareStatement("select * from users where email=? and password=?");
                      ps.setString(1, email);
                      ps.setString(2, password);
                      ResultSet rs =ps.executeQuery();
                      st = rs.next();
                  }
                  catch(Exception e) {
                      // e.printStackTrace();
                    }
                     return st;   
               }
     public boolean regUser(String email,String password) throws ClassNotFoundException, SQLException 
                {
                    PreparedStatement ps = createConnection().prepareStatement("insert into users values(?,?)");
                    ps.setString(1, email);
                    ps.setString(2, password);
                     
                    int i = ps.executeUpdate();
                    return i > 0;             
                }
     
     public String checkRoom(String roomno) throws ClassNotFoundException, SQLException
     {       
      String id="room"+roomno;
      String status=null;
      try
      {
      String query="select room_status from rooms where room_id='"+id+"' ";
      Statement st = createConnection().createStatement();
      ResultSet rs =st.executeQuery(query);
      while (rs.next()) {
         status=rs.getString("room_status");
         }
      }
      catch(Exception e) 
      {
      e.printStackTrace();
      }
      return status;
     }
     
     public void updateRoomStatus(String roomno) throws ClassNotFoundException, SQLException
     {
      String id="room"+roomno;
      String query="update rooms set room_status='1' where room_id='"+id+"'";
      Statement st = createConnection().createStatement();      
      st.executeUpdate(query);
     }
}
