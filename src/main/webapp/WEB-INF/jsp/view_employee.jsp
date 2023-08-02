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

table, th, td {
  border:1px solid black;
 text-align: left;
padding-left:1px;
  padding-top: 3px;
  padding-bottom: 3px;
}

.main{
position:absolute;
top:13%;
left:13%;
width:90%;
}

.main1{
position:absolute;
top:71%;
left:13%;
width:90%;
}
.btn {
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
      
      <% 
    String title1=(String)request.getAttribute("title");
    String id1=(String)request.getAttribute("idemp");
     String name1=(String)request.getAttribute("name");
      String dob1=(String)request.getAttribute("dob");
       String doj1=(String)request.getAttribute("doj");
        String pancard1=(String)request.getAttribute("pan");
     String pincode1=(String)request.getAttribute("pincode");
      String state1=(String)request.getAttribute("state");
       String email1=(String)request.getAttribute("email");
   String city1=(String)request.getAttribute("city");
 String mobile1=(String)request.getAttribute("mobile");
 String dept1=(String)request.getAttribute("dept");
  
  
           %>
<center>
<div class="main">
<table style="width:80%">
<br>
<h2>Personal Details</h2>

  <tr style="height:95px">
    <th>EmpId</th>
    <td><%=id1%></td>
    <th>Photo</th>
    <td><img src="https://cdn-icons-png.flaticon.com/512/206/206881.png" alt="Profile" width="100" height="100"</td>

  </tr>
  <tr>
    <th>First Name</th>
    <td><%=name1%></td>
    <th>Title</th>
    <td><%=title1%></td>
  </tr>

 <tr>
    <th>Department</th>
    <td><%=title1%></td>
    <th>Email</th>
    <td><%=email1%></td>
</tr>

<tr>
    <th>Mobile No</th>
    <td><%=mobile1%></td>
    <th>DOB</th>
    <td><%=dob1%></td>
</tr>


<tr>
    <th>DOJ</th>
    <td><%=doj1%></td>
    <th>State</th>
    <td><%=state1%></td>
</tr>

<tr>
    <th>City</th>
    <td><%=city1%></td>
    <th>Pincode</th>
    <td><%=pincode1%></td>
</tr>

<tr>
    <th>Pan Number</th>
    <td><%=pancard1%></td>
</tr>
</table>
</div>
</center>


<center>
<div class="main1">
<table style="width:80%">
<br>
<br>
<h2>Salary Related Info</h2>

  <tr>
    <th>Salary</th>
    <td>49100</td>
    <th>Allowance</th>
    <td>4523</td>
  </tr>
  <tr>
    <th>Total</th>
    <td>53623</td>
    <th>Creation Date</th>
    <td>20/04/2022</td>
  </tr>

 
</table>
</div>
</center>
   </body>
</html>
