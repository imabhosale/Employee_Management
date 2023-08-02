
<%@page import="pack1.records"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
  <head>
      
      <meta charset="utf-8">
      <title>manage</title>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
        <style>
             @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
  
/*             #searchbar{
    width: 100%;
    height: 400px;
    background: pink;
    
position:relative;
}*/


             .styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
   
    
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
   position: absolute;
   top:125px;
   left:230px;
   width: 80%;

   
  }
 

.styled-table th,
.styled-table td {
    padding: 12px 15px;
    font-size: 16px;
    
}


.styled-table thead tr {
/*    background-color: #009879;
   */
   height: 60px;
   background:#666666;
   
    
    color: #ffffff;
   border:2px;
   font-weight: bold;
  
    text-align: left;
}


.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
     font-weight: bold;
    color: black;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #2691d9;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

#view_button{
    background-color:#00cc00;
   border: none;
   border-radius: 4px;
   color:#ffffff;
   height: 25px;
    width:100%;
   padding: 4px;
}
#update_button{
    background-color:#0066ff;
   border: none;
   border-radius: 4px;
   color:#ffffff;
   height: 25px;
   width:100%;
   padding: 4px;
   
}
#Delete_button{
    background-color:#ff0000;
   border: none;
   border-radius: 4px;
   color:#ffffff;
   height: 25px;
    width:100%;
    padding: 4px;
}

/*.mansi{
    height: 100%;
    width: 100%;
    background: black;
    overflow: hidden;
}*/
.search_bar{
    background: pink;
    width:700px;
    height:50px;
    text-align: center;
    position:absolute;
    top:100px;
    left:300px;
   position: fixed;
}
.search_bar label{
    font-size: 21px;
    
}
.button_search{
    
    float: right;
   
    
}
.button_search input{
    
    height: 30px;
    width: 70px;
    padding: 3px;
    margin: 4px;
/*     position: relative;
    left: 40%;
    top: 0px;*/
   
}
.input{
    width:300px;
    height: 30px;
    padding-left: 30px;  
    font-style: italic;
}

  </style>
      <body>
        
<table class="styled-table" >
    
 
    <thead >
        <tr  >
           
                
           <th>ID</th>
		<th>NAME</th>
                <th>JOB TITLE</th>
                
		
                <th>Department</th>
                <th>EMAIL</th>
                 <th>View</th>
                 <th>Update</th>
                 <th>Delete</th>
		
           
        </tr>
    </thead>
   
    <tbody>
        <%ArrayList<records> std =
			(ArrayList<records>)request.getAttribute("list");
		
                        
        for(records s:std){%>
		
			<tr>
				<td class="row-data"> <%=s.getId()%></td>
				<td><%=s.getName()%></td>
                                <td><%=s.getTitle()%></td>
                                 <td><%=s.getDepartment()%></td>
                                <td><%=s.getEmail()%></td>
                                
                               
                                <td> <button id="view_button"  onclick="view(this)" >View</button></td>
                                <td> <button  id="update_button" onclick="update(this)">Update</button></a></td>
                                <td> <button  id="Delete_button" onclick="del(this)">Delete</button></a></td>
                               
			</tr>
			<%}%>

    </tbody>
</table>
                         <% 
                             
    String m1=(String)request.getAttribute("previous");
    if(m1==null)
    {
    m1="";
                         }
                        
           %>
                        
                        <div class="search_bar">
<!--                          <form action="search_records" method="post">-->
<form action="#" method="get">
                              <label>Search Record </label>
            <input  class="input"  type="text" name="search_any"  value="<%=m1%>"  onkeyup="search()"   placeholder="search here..."  >
 
<!--  <div class="button_search">
      <input type="submit" value="search">-->
 </form>
        </div>
 
                            </div>
      </body>            
    </body>
    
    
    <script>
		
                function view(button) {
    // get the row that contains the button
    var row = button.parentNode.parentNode;
    // get the data from the cells in the row
    var cells = row.getElementsByTagName("td");
    var data = [];
    for (var i = 0; i < cells.length; i++) {
        data.push(cells[i].textContent);
    }
   
   // alert("employee: " +data[0] );
    
    var myVariable = data[0];
    
     $.ajax({
    url: "/employeemanagement/save",
    type: 'POST',
    data: { "Name":myVariable },
    success: function(data,textStatus,jqXMR) {
       
   },error:function(jqXMR,textStatus,errorThrown){
            
        }
});
    window.location = '/employeemanagement/view_details'; 
}

function search()
{
    
    var myVariable = document.getElementsByName("search_any")[0].value;
    $.ajax({
    url: "/employeemanagement/save1",
    type: 'POST',
    data: { "Name":myVariable },
    success: function(data,textStatus,jqXMR) {
       
   },error:function(jqXMR,textStatus,errorThrown){
            
        }
});
   window.location = '/employeemanagement/search_records'; 
}


 function update(button) {
    // get the row that contains the button
    var row = button.parentNode.parentNode;
    // get the data from the cells in the row
    var cells = row.getElementsByTagName("td");
    var data = [];
    for (var i = 0; i < cells.length; i++) {
        data.push(cells[i].textContent);
    }
   
   // alert("employee: " +data[0] );
    
    var myVariable = data[0];
    
     $.ajax({
    url: "/employeemanagement/update_1",
    type: 'POST',
    data: { "Name":myVariable },
    success: function(data,textStatus,jqXMR) {
       
   },error:function(jqXMR,textStatus,errorThrown){
            
        }
});
    window.location = '/employeemanagement/updateform'; 
}


function del(button) {
    // get the row that contains the button
    var row = button.parentNode.parentNode;
    // get the data from the cells in the row
    var cells = row.getElementsByTagName("td");
    var data = [];
    for (var i = 0; i < cells.length; i++) {
        data.push(cells[i].textContent);
    }
   
   // alert("employee: " +data[0] );
    
    var myVariable = data[0];
    
     $.ajax({
    url: "/employeemanagement/delete_1",
    type: 'POST',
    data: { "Name":myVariable },
    success: function(data,textStatus,jqXMR) {
       
   },error:function(jqXMR,textStatus,errorThrown){
            
        }
});
    window.location = '/employeemanagement/deleteform'; 
}

	</script>
    
           
       <style>
          
*{
  margin: 0;
  padding: 0;
  
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
  position: fixed;
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
   </body>
</html>
