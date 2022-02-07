<%-- 
    Document   : index
    Created on : 7/02/2022, 4:19:20 p. m.
    Author     : SENA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color: blue">Hello World!</h1>
        <form>
            <input type="submit" name="boton">
        </form>
        <%
            
            if(request.getParameter("boton")!=null){
            int datos = 10;
            JOptionPane.showMessageDialog(null, "Hola mundo");
            HttpSession sesion = request.getSession();
            sesion.setAttribute("dato", datos);
            response.sendRedirect("dato.jsp");
            }
        %>
    </body>
</html>
