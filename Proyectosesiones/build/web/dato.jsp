<%-- 
    Document   : dato
    Created on : 7/02/2022, 4:39:26 p. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos</h1>
        
        <%
            HttpSession respueta = request.getSession();
            int x=(Integer)respueta.getAttribute("dato");
        %>
        <h1><%=x%></h1>
    </body>
</html>
