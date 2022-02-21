<%-- 
    Document   : index
    Created on : 18/02/2022, 1:24:10 p. m.
    Author     : SENA
--%>

<%@page import="controlador.Conexion"%>
<%@page import="controlador.Servletusuario" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario usuarios</title>
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <nav class="navbar">
            <ul>
                <li><a href="/bancoo">Usuarios</a></li>
                <li><a href="cliente.jsp">Clientes</a></li>
                <li><a href="lineas.jsp">Lineas</a></li>
                <li><a href="credito.jsp">Creditos</a></li>
            </ul>
            <ul>
                <li><a href="#">Insertar</a></li>
                <li><a href="consultausuarios.jsp">Consultar</a></li>
                <li><a href="">Actualizar</a></li>
                <li><a href="">Eliminar</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Formulario Usuarios</h1>
        <form class="formulario" action="Servletusuario" method="POST">
            <label for="documento">Numero de documento</label>
            <input type="number" id="documento" placeholder="Documento" name="documento">
            <label for="nombre">Nombre de usuario</label>
            <input type="text" id="nombre" placeholder="Digite el usuario" name="nombre">
            <label for="clave">Clave</label>
            <input type="password" id="clave" placeholder="Digite su clave" name="clave">
            <label for="Rol">Rol del usuario</label>
            <select id="Rol" name="rol">
                <option value="value" disabled>Indique el rol</option>
                <option value="admin">Administrador</option>
                <option value="cliente">Cliente</option>
                <option value="empleado">Empleado</option>
            </select>
            <label for="estado">Estado</label>
            <select id="estado" name="estado">
                <option value="estado" disabled>Estado</option>
                <option value="activo">Activo</option>
                <option value="inactivo">Inactivo</option>
            </select>
            <label id="imagen">Foto</label>
            <input type="text" id="id" name="imagen">
            <button type="submit" name="subir">Enviar</button>
        </form>
        
    </body>
</html>
