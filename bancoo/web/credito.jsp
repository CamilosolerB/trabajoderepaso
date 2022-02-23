<%-- 
    Document   : credito
    Created on : 19 feb 2022, 15:56:23
    Author     : PC
--%>

<%@page import="modelo.CreditoDAO"%>
<%@page import="modelo.ClientesDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Formulario creditos</title>
    </head>
    <body>
        <%
            ArrayList<String> listado = new ArrayList<String>();
            ArrayList<String> listacre = new ArrayList<String>();
            CreditoDAO cre = new CreditoDAO();
            listado = cre.Consultadocu();
            listacre = cre.Consultacre();
        %>
         <nav class="navbar">
            <ul>
                <li><a href="indexa.jsp">Usuarios</a></li>
                <li><a href="cliente.jsp">Clientes</a></li>
                <li><a href="lineas.jsp">Lineas</a></li>
                <li><a href="#">Creditos</a></li>
            </ul>
            <ul>
                <li><a href="#">Insertar</a></li>
                <li><a href="tablacredito.jsp">Consultar</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Formulario Creditos</h1>
        <form class="formulario" action="Servletcreditos" method="POST">
            <label for="doc">codigo</label>
            <input type="number" id="doc" placeholder="Codigo de la linea" name="codigo">
            <label for="doc">Documento de la linea</label>
            <select id="doc" name="documento">
                <option value="first" disabled>Documentos</option>
                <%for(String lista: listado){%>
                    <option value="<%=lista%>"><%=lista%></option>
                <%};%>
            </select>
            <label for="codlinea">codigo de la linea</label>
            <select id="doc" name="codlinea">
                <option value="first" disabled>codigo de la linea</option>
                <%for(String arreglo: listacre){%>
                <option value="<%=arreglo%>"><%=arreglo%></option>
                <%}%>
            </select>
            <label for="monto">Monto</label>
            <input type="number" id="monto" placeholder="Digite el monto" name="monto">
            <label for="fecha">Fecha</label>
            <input type="date" id="fecha" name="fecha" placeholder="fecha de transaccion">
            <label for="plazo">Plazo</label>
            <input type="number" name="plazo" placeholder="Digite el plazo de pago">
            <button type="submit" name="subir">Enviar</button>
        </form>
    </body>
</html>
