<%-- 
    Document   : lineas
    Created on : 19 feb 2022, 16:32:10
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Formulario de lineas</title>
    </head>
    <body>
         <nav class="navbar">
            <ul>
                <li><a href="indexa.jsp">Usuarios</a></li>
                <li><a href="cliente.jsp">Clientes</a></li>
                <li><a href="#">Lineas</a></li>
                <li><a href="credito.jsp">Creditos</a></li>
            </ul>
            <ul>
                <li><a href="#">Insertar</a></li>
                <li><a href="tablalineas.jsp">Consultar</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Formulario lineas de credito</h1>
        <form class="formulario" action="Servletlinea" method="POST">
            <label for="cod">Codigo de la linea</label>
            <input type="number" id="cod" placeholder="Codigo de la linea" name="codigo">
            <label for="numero">Numero de la linea</label>
            <input type="number" id="numero" placeholder="Digite el numero de la linea" name="numero">
            <label for="monto">Monto maximo</label>
            <input type="number" id="monto" name="monto" placeholder="Digite el monto maximo">
            <label for="plazo">Plazo maximo de pago</label>
            <input type="number" name="plazo" placeholder="Digite el plazo de pago">
            <button type="submit" name="subir">Enviar</button>
        </form>
    </body>
</html>
