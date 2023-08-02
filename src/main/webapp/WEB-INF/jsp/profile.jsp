<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

.button {
  border: none;
  color: white;
  padding: 10px 28px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
border-radius:5px;
}
.button1 {background-color: #4CAF50;}

.but{
position:absolute;
top:78%;
left:53%;
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
<center>
    
     <% 
     String name=(String)  request.getAttribute("adminname");
     String doj=(String)  request.getAttribute("admindoj");
     String city=(String)  request.getAttribute("admincity");
     String email=(String)  request.getAttribute("adminemail");
     String mobile=(String)  request.getAttribute("adminmobile");
      String username=(String)  request.getAttribute("adminusername");
     
   
           %>
<div class="main">
<table style="width:80%">
<br><br>
<h2>Admin Details</h2>
<br>

  <tr style="height:95px">
    <th>Username</th>
    <td><%=username%></td>
    <th>Photo</th>
    <td><img src="https://cdn-icons-png.flaticon.com/512/206/206881.png" alt="Profile" width="100" height="100"</td>

  </tr>
  <tr>
    <th>Name</th>
    <td><%=name%></td>
<!--    <th>Last Name</th>
    <td>Kumar</td>-->
  </tr>

 <tr>
    <th>Email</th>
    <td><%=email%></td>
    <th>Mobile</th>
    <td><%=mobile%></td>
</tr>

<tr>
    <th>DOJ</th>
    <td><%=doj%></td>
    <th>City</th>
    <td><%=city%></td>
</tr>

</table>
</div>
<div class="but">
  
   <button class="button button1" onclick="callAlert();">Log Out</button>
 <script type="text/javascript">
           function callAlert()
          {
               swal({
                title: "Are you sure to logout?",
                //text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })

              
              .then((willDelete) => {
                if (willDelete) {
          
                    icon: "success";
                    
                    window.location.href = "http://localhost:6289/employeemanagement/login";    
                
                }                
                else {
                  swal("Your imaginary file is safe!");
                  timer: 2000,
                  window.location.href = "http://localhost:6289/employeemanagement/profile";
                }
              });
              
              }
        </script>
</div>
</center>
   </body>
</html>
