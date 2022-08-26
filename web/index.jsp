<%-- 
    Document   : index
    Created on : Jun 13, 2022, 8:45:14 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Lanka Hotel Login</title>
        <style>
            *{
                font-family: sans-serif;
            }
            .container{
                border: 2px solid #2980b9;
                border-radius: 4px;
                margin: auto;
                margin-top: 10%;
                padding: 40px;
                width: 400px;
                backdrop-filter: blur(15px);
            }
            h2{
               color: blue;
            }
            p{
              font-size: 14px;  
            }
            .btn{
                padding: 5px;
                font-weight: bold;
                background-color: #54a0ff ;
            }
            .btn:hover{
                background-color:#48dbfb;
                color: white;
            }
             
        </style>

    </head>
  <!--  <body style="background-image:url('https://pix10.agoda.net/hotelImages/547132/-1/681395450abe299ad871a33d189729b3.jpg?ca=10&ce=1&s=1024x768');background-repeat:no-repeat;background-size:cover;background-attachment: fixed">
    -->
    <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    %>
    <body>
       <div class="container">
       <form method="post" action="./login">
          <h1 style="color:greenyellow">Green Lanka Hotel</h1>
          <h2>Login</h2>
          <table>
                <tr>
                    <td>Email</td>
                    <td><input class="td" size="35" type="text" name="email" placeholder="123example@gmail.com" required=""></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td><input class="td" size="35"  type="password" name="password" maxlength="8" required=""></td>
                </tr>
          </table><br>
            <input class="btn" type="submit" value="Sign in">
            <p>If you haven't account please <a href="register.jsp"><b>Register<b></a> first.</p>
       </form>
       </div>
    </body>
</html>
