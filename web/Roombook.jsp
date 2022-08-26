<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room-Book</title>
         <style>
            *{
                font-family: sans-serif;
            }
            .body{
                
            }
            .container{
                border: 2px solid #2980b9;
                border-radius: 4px;
                margin: auto;
                margin-top: 10%;
                padding: 40px;
                width: 400px;
                backdrop-filter: blur(15px);
                background-color: #ecf0f1;
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
            textArea{
                resize: none;
            }
            
        </style>
    </head>
    <body>
    <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    %>
    <div class="container">
        <form action="./pay" method="post" >
            <h1>ROOM &nbsp; ${roomno}  </h1>
            <table>
            <tr>
                <td>Date you expect to stay</td>
                <td><input type="number" id="date" step="1" onloadedmetadata="change()"  onkeyup="change()" onkeypress="change()" onclick="change()" name="date"  value="1" min="1" max="7" required=""></td>
            </tr>
            
            <tr>
                <td>Description</td>
                <td><textarea rows="6" cols="40"  required="" name="description"></textarea></td>
            </tr>
            
            <tr>
                <td>User Email</td>
                <td><input  type="text" name="email" size="35" placeholder="xxxxxx@gamil.com" required=""></td>
            </tr>
            
            <tr>
                <td>Password</td>
                <td><input type="password" size="35" name="password" maxlength="8"></td>
            </tr>
            
            <tr>
                <td>Payment</td>
                <td><label id="price">10</label></td>
            </tr>
        </table>
   
            <input class="btn" type="submit" value="Pay">
        </form>
        </div>
            
            
        <script type="text/javascript">
         function change() {
         var  x = document.getElementById("date").value;
         if(x==1 | x==2 | x==3 | x==4 | x==5 | x==6 | x==7)
         {   
             document.getElementById("price").style.color = "blue";
             document.getElementById("price").innerHTML = x * 10;
         }
         else
         {
             document.getElementById("price").style.color = "red"; 
             document.getElementById("price").innerHTML = "Enter 1 to 7";
         }
        }             
        </script>
        
    </body>
</html>
