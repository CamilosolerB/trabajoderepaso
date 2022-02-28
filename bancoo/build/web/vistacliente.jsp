<%-- 
    Document   : vistacliente
    Created on : 28/02/2022, 4:05:20 p. m.
    Author     : SENA
--%>
<%
    HttpSession sesion = request.getSession();
    String usu = (String) sesion.getAttribute("usuario");
    String rol = (String) sesion.getAttribute("rol");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=usu%></title>
    </head>
    <body>
        <h1>Hello Client!</h1>
    </body>
</html>
