<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
        <link rel="stylesheet" type="text/css" href="newcss.css">
    </head>
    <style>
        *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
    
  margin: 0;
padding:0;
 background-color: #E5E7E9;
  height: 100vh;
  overflow: hidden;
}
.right{
   
position: absolute;
  top: 50%;
  left: 75%;
  transform: translate(-50%, -50%);
  width: 400px;
  
  position: fixed;;
  
 }
 .left{
     position: absolute;
     bottom: 10%;
     top:-1.4%;
     
 }
.right h1,h2{
   
  text-align: center;
  padding: 0 20px 0 5px;
  margin: 5px;
  color: black;
  font-weight:normal;
    font-family:'Times New Roman', Times, serif;
   height: 65px;
    font-size:240%;
/*  border-bottom: 1px solid black;*/
}
.right h3{
text-align: center;
  padding: 0 20px 25px 20px;
  margin: 5px;
  font-size:190%;
}



div.card {

  width: 500px;
  height:520px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
 border-radius: 5px;
 background-color: #FFFFFF;
font-size: 20px;
 
}
.card1{

  
  text-align: center;
 border-radius: 5px;

font-size: 17px;
}
 .log {
  
 font-size: 15px;
  padding: 15px;
 }

 .log1{
  font-size: 15px;
  padding: 80px;
 }
.details{

    font-size:22px;
    padding :0 0 15px 0;
}

input[type=text] {
  width: 80%;
  padding: 10px 15px;
  margin: 10px 0;
  box-sizing: border-box;
  font-size: 10px;
}
.image{
position:absolute;
top:9.5%;
     border-radius: 10px;
/*     float:right;*/
}

.signup{
position:absolute;
left:40%;
font-size:15px;
}

.forgot{
position:absolute;
left:60%;
font-size:15px;
}
#fname{
    width: 250px;
    font-size: 15px;
     height:40px;
}

#lname{
    width:250px;
    height:40px;
    padding-left: 20px;
    font-size: 15px;
}


input[type=submit]{
position:absolute;
top:83%;
left:45%;
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 60px ;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
border-radius:5px;
}
        </style>
    <body>
         <img src="https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"  width="5000" height="830">
       <div class="right">
           
        <div class="card">
            <div class="log">
                <h1> Hello Admin!</h1>
        <h2>Log In</h2>
        <h3>Administrator</h3>

        <div class="details">
      <form  action="processformkunal" method="post">
  <label for="fname">Username</label><br>
  <input type="text" id="fname" name="a" placeholder="Username or Email"  required=""><br>
  <label for="lname">Password</label><br>
  <input type="password" id="lname" name="b" placeholder="Password" required=" "><br>
<div class="login">
  <input type="submit"  value="Login">
</div>
</form>
        </div>

<div class="signup">
<a href="http://localhost:6289/employeemanagement/adminsignup">Sign Up</a>
</div>

<div class="forgot">
<a href="#">Forgot Password</a>
</div>
        <center>
        
</center>
          </div>
        </div>
       </div>
      
        
        <div class="left">
          <div class="card1">  
               <div class="log1">
                   <div class="image">
          <img src="https://blog.springworks.in/wp-content/uploads/2020/12/4731142-2048x1365.jpg"  width="700" height="520">   
               </div>
               </div>
          </div>
      ??</div>
</html>