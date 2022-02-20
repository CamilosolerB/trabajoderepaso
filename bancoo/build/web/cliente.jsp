<%-- 
    Document   : cliente
    Created on : 19 feb 2022, 15:23:03
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css"/>
         <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <title>Formulario clientes</title>
    </head>
    <body>
         <nav class="navbar">
            <ul>
                <li><a href="/bancoo">Usuarios</a></li>
                <li><a href="#">Clientes</a></li>
                <li><a href="lineas.jsp">Lineas</a></li>
                <li><a href="credito.jsp">Creditos</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Formulario Clientes</h1>
        <form class="formulario" action="Servletcliente" method="POST">
            <label for="documento">Numero de documento</label>
            <input type="number" id="documento" placeholder="Documento" name="documento">
            <label for="nombre">Nombre</label>
            <input type="text" id="nombre" placeholder="Digite el nombre" name="nombre">
            <label for="apellido">Apellido</label>
            <input type="text" id="apellido" placeholder="Digite el apellido" name="apellido">
            <label for="correo">Correo electronico</label>
            <input type="email" id="correo" name="correo" placeholder="Correo electronico">
            <label for="documento">Numero telefonico</label>
            <input type="number" name="numero" placeholder="Numero de telefono">
            <label for="sexo">Sexo</label>
            <select id="sexo" name="sexo">
                <option value="Masculino">Masculino</option>
                <option value="Femenino">Femenino</option>
                <option value="No binario">No binario</option>
            </select>
            <label id="fecnac">Fecha de nacimiento</label>
            <input type="date" id="fecnac" name="fecnac">
            <button type="submit" name="subir">Enviar</button>
        </form>
    </body>
</html>
