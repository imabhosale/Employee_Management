<%@page import="pack1.add_employeedetail"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Add Employee</title>
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
            <li><a href="#">Feedback</a></li>
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
   </body>
</html> 
<style>

.container1{
  max-width:800px;
/*  width: 80%;*/
height: 420px;
  background-color: #fff;
  padding: 25px 25px;
  border-radius: 5px;
  box-shadow: 7px 7px 10px 7px rgba(0,0,0,0.15);
  position:absolute;
  top:20%;
  left:27%;
}
.container1 .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container1 .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  
  background:#47bcdb;
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 10px;
  width: calc(55% / 2 - 30px);
/*width: max-content;*/
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #000000;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color:#000000;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}

/* form input[type="radio"]{
   display: none;
 }*/
 form .button{
   height: 45px;
   margin: 3px;
   width: 100%;
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;

background:#2b8ced;
 
 }
 
 form .button input:hover{
  
background: #2d313a;


  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 50px;
    
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  .dept{
     height: 42px;
   width: 100%;
   border-radius: 5px;
  
   
   font-size: 14px;
   

  }
</style> 

 <div class="container1">
      <% 
    Integer m=(Integer)request.getAttribute("mrt");
  
           %>
          
    <div class="title">Employee Details
    </div>
       
    <div class="content">
      <form action="addemployee" method="post">
        <div class="user-details">
            <div class="input-box">
          
               
              <p id="content-holder"> </p>
            <span class="details">Employee ID  </span>
            <input type="text"  value="<%=m%>"  name="id"  required readonly>
          </div>
          <div class="input-box">
            <span class="details">Employee title</span>
            <input type="text"  name="title"  placeholder="designation" required=>
          </div>
          
          <div class="input-box">
            <span class="details"  id="content-holder"> Employee name</span>
             <input type="text" placeholder="Enter full name"  name="name" required>
          </div>
          
                  
            <div class="input-box">
            <span class="details">Department</span>

                <select  class="dept"  name="department">
        <option> Select Department</option>
         <%ArrayList<String> std1 =
                            (ArrayList<String>)request.getAttribute("dept");


            for(String s:std1){%>
              <option><%=s%></option>   
              <%}%>
        </select>
          </div>
        
            <div class="input-box">
            <span class="details">DOB</span>
          <input type="date" placeholder="DD/MM/YYYY" name="dob" required>
          
          </div>
              <div class="input-box">
            <span class="details">DOJ</span>
            <input type="date" placeholder="DD/MM/YYYY" name="doj"required>
            
          </div>
             <div class="input-box">
            <span class="details">State</span>
            <input type="text" name="state"required placeholder="eg. Maharastra">
          </div>
            <div class="input-box">
            <span class="details">City</span>
            <input type="text" name="city" required placeholder="eg.Nashik">
          </div>
             <div class="input-box">
            <span class="details">Pincode</span>
            <input type="text" name="pincode" placeholder="eg.422009">
          </div>
           
          <div class="input-box">
            <span class="details">Email id</span>
            <input type="email" name="email" placeholder="Enter email-id " required>
          </div>
                   
            <div class="input-box">
            <span class="details">Mobile no</span>
            <input type="text" name="mobile"  placeholder="10 Digit-Number">
          </div>
           <div class="input-box">
            <span class="details">Pan Number</span>
            <input type="text" name="pancard">
          </div>
        <div class="input-box">
            <span class="details">TRANSACTION_ID</span>
            <input type="text"  name="ti"  placeholder="trans id" required=>
          </div>
        <div class="input-box">
            <span class="details">GRADE_ID</span>
            <input type="text"  name="gi"  placeholder="grade id" required=>
          </div>
        <div class="input-box">
            <span class="details">DEPT_ID</span>
            <input type="text"  name="di"  placeholder="dept id" required=>
          </div>
           
                    
      
      
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
    
  </body>
</html>
