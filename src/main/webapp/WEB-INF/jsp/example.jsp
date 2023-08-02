
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%String std1 = (String)request.getAttribute("deep");


           %>
              <p><%=std1%></p>   
        <h1>Hello World!</h1>
    </body>
</html>

