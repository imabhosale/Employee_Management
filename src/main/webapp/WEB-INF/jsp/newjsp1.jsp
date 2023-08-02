<%@page import="pack1.add_employeedetail"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>welcome</title>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
   <body>
       
       
       <style>
           @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  user-select: none;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.sidebar{
  position: fixed;
  width: 220px;
  height: 100%;
  left: 0px;
 background:#1b1b1b;
;
 
}
.sidebar.show{
  left: 0px;
}
.sidebar .text{
  color: white;
  font-size: 22px;
  font-weight: 650;
  line-height: 46px;
  text-align: center;
  background: #1b1b1b;
  letter-spacing: 1px;
  margin-bottom: 10px;;
}
nav ul{
  background: #1b1b1b;
  height: 100%;
  width: 100%;
  list-style: none;
}
nav ul li{
  line-height: 60px;
  border-top: 1px solid rgba(255,255,255,0.1);
}
nav ul li:last-child{
  border-bottom: 1px solid rgba(255,255,255,0.05);
}
nav ul li a{
  position: relative;
  color: white;
  text-decoration: none;
  font-size: 18px;
  padding-left: 40px;
  font-weight: 500;
  display: block;
  width: 100%;
  border-left: 3px solid transparent;
}
nav ul li.active a{
  color: cyan;
  color:#2b8ced;
/*color: #0081fe;*/
  background: #1e1e1e;
  border-left-color:#2b8ced;
}
nav ul li a:hover{
  background: #1e1e1e;
   color:#2b8ced;
  
}
nav ul ul{
  position: static;
  display: none;
}
nav ul .feat-show.show{
  display: block;
}
nav ul .serv-show.show1{
  display: block;
}
nav ul ul li{
  line-height: 42px;
  border-top: none;
}
nav ul ul li a{
  font-size: 17px;
  color: #e6e6e6;
  padding-left: 80px;
}
nav ul li.active ul li a{
  color: #e6e6e6;
  
  background: #1b1b1b;
  border-left-color: transparent;
}
nav ul ul li a:hover{
/*color: cyan!important;*/
 color:#2b8ced!important;
  background: #1e1e1e!important;
  
}
nav ul li a span{
  position: absolute;
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
  font-size: 22px;
  transition: transform 0.4s;
}
nav ul li a span.rotate{
  transform: translateY(-50%) rotate(-180deg);
}


.main_content{
  width: 100%;
  padding-left: 220px;;
  float: left;
}
.main_content .header{
  padding: 25px;
  margin-left: 0;
  /* background: rgb(5, 126, 114); */
  background: #2b8ced;
  
  color:black;
  text-align: right;
  border-bottom: 1px solid #e0e4e8;
}


.info{
position:absolute;
top:27%;
left:25%;
}

.info1{
position:absolute;
top:26%;
left:65%;
}

input[type=text] {
 position:absolute;
left:130%
}

h4{
position:absolute;
top:-18%;
left:150%;
width:180%;
}
.button1 {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 5px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius:5px;
}
.button2 {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 5px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius:5px;
}

.but1{
position:absolute;
top:118%;
left:-130%;
}

.but2{
position:absolute;
top:118%;
}.btn {
position:absolute;
right:16%;
top:1.8%;
  background-color: #2b8ced;
  
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 23px;
  cursor: pointer;
}
 

       </style>
    <div class="main_content">
      <div class="header">
          <h3>Welcome Admin! 
</h3>
          <a href="http://localhost:6289/employeemanagement/home"><button class="btn"><i class="fa fa-home"></i></button></a></div>
    </div>
     
      </div>
      <nav class="sidebar">
         <div class="text">
            Employee Management
         </div>
         <ul>
            <li class="active"><a  href="http://localhost:6289/employeemanagement/dashboard">Dashboard</a></li>
            <li>
               <a href="#" class="feat-btn">Department
               <span class="fas fa-caret-down first"></span>
               </a>
               <ul class="feat-show">
                  <li><a href="http://localhost:6289/employeemanagement/addepart">Add</a></li>
                  <li><a href="http://localhost:6289/employeemanagement/manage_dept">Manage</a></li>
               </ul>
            </li>
            <li>
               <a href="#" class="serv-btn">Employee
               <span class="fas fa-caret-down second"></span>
               </a>
               <ul class="serv-show">
                  <li><a  href="http://localhost:6289/employeemanagement/addemployee">Add</a></li>
                  <li><a  href="http://localhost:6289/employeemanagement/manage">manage</a></li>
                 
               </ul>
            </li>
             <li><a href="http://localhost:6289/employeemanagement/salary">Salary</a> </li>
           <li><a href="http://localhost:6289/employeemanagement/grade">Grade</a></li>
            <li><a href="http://localhost:6289/employeemanagement/profile">My Profile</a></li>
            <li><a href="http://localhost:6289/employeemanagement/feedback">Feedback</a></li>
         </ul>
      </nav>
    
  </div>
      
      </div>
      <script>
        
           $('.feat-btn').click(function(){
             $('nav ul .feat-show').toggleClass("show");
             $('nav ul .first').toggleClass("rotate");
           });
           $('.serv-btn').click(function(){
             $('nav ul .serv-show').toggleClass("show1");
             $('nav ul .second').toggleClass("rotate");
           });
           $('nav ul li').click(function(){
             $(this).addClass("active").siblings().removeClass("active");
           });
      </script>
      
      
      
      <div class="info1">
<form action="/action_page.php">
    
  <label for="dept">Current Department</label>
 <input type="text" id="dept" name="dept">
  
  
  
  
  <label for="basic">Basic</label>
  <input type="text" id="basic" name="basic"><br><br>
  <label for="da">DA</label>
  <input type="text" id="da" name="da"><br><br>

  <label for="ma">Medical Allowance</label>
  <input type="text" id="ma" name="ma"><br><br>
  <label for="gross">Gross</label>
  <input type="text" id="gross" name="gross"><br><br>
  
  <label for="ptax">Profession Tax</label>
  <input type="text" id="ptax" name="ptax"><br><br>
    <label for="nets">Net Salary</label>
  <input type="text" id="nets" name="nets"><br><br>

</form>
<div class="but1">
<button class="button1">Submit</button>
</div>
<div class="but2">
<button class="button2">Clear</button>
</div>
</div>
      
      <div class="info">
<h4 style="font-size:150%;">Employee  Salary  Details</h4>

<form action="/action_page.php">
  <label for="Empid">Employee ID </label>
  <input type="text" id="Empid" name="Empid"><br><br>
  <label for="cgrade">Current Grade Name</label>
  <input type="text" id="cgrade" name="cgrade"><br><br>

  <label for="empsal">Employee Salary Month</label>
  <input type="text" id="empsal" name="empsal"><br><br>
  <label for="hra">HRA</label>
  <input type="text" id="hra" name="hra"><br><br>

  <label for="ta">TA</label>
  <input type="text" id="ta" name="ta"><br><br>
  <label for="bonus">Bonus</label>
  <input type="text" id="bonus" name="bonus"><br><br>
  
  <label for="provf">Provident Fund</label>
  <input type="text" id="provf" name="provf"><br><br>

</form>
</div>


   </body>
</html>