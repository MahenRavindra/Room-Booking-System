<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title> 
        <style>
            *{
                margin: 0;
            }  
            .row{
                margin-top: 10px;
                padding-top: 10px;
            }
            .col button{
                border-radius: 5px;
                background-color: #2c3e50;
                padding: 5px 20px 5px 20px;
                color: white;
            }
            .col button:hover{
                background-color: #3498db;
            }
            .col button,p,h3{
               margin: 5px 5px 5px 5px;
            }
            .nav{
                display: flex;
                margin-left: 100px; 
            }
            .nav li{
                padding: 10px 10px 10px 10px;
            }
            .nav a{
                 font-weight: bold;
                 text-decoration: none;
                 color: black;
            }
            .nav a:hover{
                 text-decoration: underline;
                 color: #8e44ad;
            }
            .nav p{
                margin-left: 15%;
            } 
        </style>
    <!--Bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    
    <body style="background-color: #ecf0f1">
        <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    %>
        <!--header-->
        <div style="background-color:#26de81">
        <h1 style="color:white; text-align: center ; padding-top:20px">Green Lanka Hotel</h1> 
        <hr>
        </div>
        <div >
            <ul class="nav">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li><a  href="#"  onMouseOver="this.style.color='red'"onMouseOut="this.style.color='black'">Logout</a></li>
                <p style="font-size: 25px;font-family:fantasy;color:#45aaf2; font-weight: 500">Hello ${username} make your Holiday Great.</p>
            </ul>
        </div>
       <!--header-->
       
       
  <!--card-->
  <div class="container"> 
      
   <div class="row">
   <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/15.jpg" alt="Room 1" style="width:100%">
     <h3>Room 1</h3>
     <p class="price">$10.99</p>
     <p>Single Bed Room & No View</p>
      <input type="hidden" name="room" value="1">
     <p><button type="submit">Book</button></p>
     </div>   
     </form>
   </div>
      
  <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/14.jpg" alt="Room 2" style="width:100%">
     <h3>Room 2</h3>
     <p class="price">$20.99</p>
     <p>Single Bed Room & with View</p>
      <input type="hidden" name="room" value="2">
     <p><button type="submit">Book</button></p>
     </div>  
     </form>
  </div>
      
  <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/13.jpg" alt="Room 3" style="width:100%">
     <h3>Room 3</h3>
     <p class="price">$30.99</p>
     <p>Double Bed Room & No View</p>
      <input type="hidden" name="room" value="3">
     <p><button type="submit">Book</button></p>
     </div> 
     </form>
  </div>  
       
   </div>
  
  <div class="row">
  <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/12.jpg" alt="Room 4" style="width:100%">
     <h3>Room 4</h3>
     <p class="price">$40.99</p>
     <p>Double Bed Room & with View</p>
      <input type="hidden" name="room" value="4">
     <p><button type="submit">Book</button></p>
     </div>  
     </form>         
  </div>
      

 <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/11.jpg" alt="Room 5" style="width:100%">
     <h3>Room 5</h3>
     <p class="price">$50.99</p>
     <p> Two person mini Apartment & with View</p>
      <input type="hidden" name="room" value="5">
     <p><button type="submit">Book</button></p>
     </div>  
     </form>         
  </div>
      
  <div class="col">
     <form method="post" action="./book">
     <div class="card">
     <img src="http://www.zenonbali.com/images/akana/10.jpg" alt="Room 6" style="width:100%">
     <h3>Room 6</h3>
     <p class="price">$60.99</p>
     <p>Family Apartment & with View</p>
     <input type="hidden" name="room" value="6">
     <p><button type="submit">Book</button></p>
     </div> 
     </form>
  </div>
  </div> 
  </div>   
  <!--Card-->
  
  <!--footer-->
  
  <!--footer-->

</body>
</html>
