<%-- 
    Document   : register
    Created on : Jun 13, 2022, 9:12:47 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Lanka Hotel Register</title>
         <style>
            *{
                font-family: sans-serif;
            }
            .body{
              background-image:url("https://thumbs.dreamstime.com/b/sunflowers-sunset-field-illuminated-as-sun-sets-behind-rocky-mountains-colorado-76261742.jpg");
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
              font-size: 12px;  
            }
            .btn{
                margin-top: 20px;
                padding: 10px;
                font-weight: bold;
                background-color: #54a0ff ;
            }
            .btn:hover{
                background-color:#48dbfb;
                color: white;
            }
        </style>
    </head>
   <!-- <body style="background-image:url('https://pix10.agoda.net/hotelImages/547132/-1/681395450abe299ad871a33d189729b3.jpg?ca=10&ce=1&s=1024x768');background-repeat:no-repeat;background-size:cover;background-attachment: fixed">
-->
<body>
    <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    %>
        <div class="container">
        <form method="post" action="./register">
            <h1 style="color:greenyellow">Green Lanka Hotel</h1>
            <h2 style="color: blue">Register</h2>
            <p><b>Please enter valid Email address & password must contain 8 characters and Upper and lower letters and numbers.</b></p>
            <table>
                <tr>
                    <td>Email</td>                   
                    <td><input type="text" placeholder="123example@gmail.com" name="email" required=""></td>                 
                </tr>
                <tr>
                    <td>Password</td>                   
                    <td><input type="password" name="password" maxlength="8" required=""></td>                 
                </tr>
                <tr>
                    <td>Confirm Password</td>                   
                    <td><input type="password" name="confirmpassword" maxlength="8" required=""></td>                 
                </tr>
            </table>
            <input class="btn" type="submit" value="Register">
        </form>
        </div>
    </body>
</html>
