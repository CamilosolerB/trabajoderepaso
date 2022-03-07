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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista cliente</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="bulma/css/bulma-rtl.css">
    <link rel="stylesheet" href="bulma/css/bulma-rtl.min.css">
    <link rel="stylesheet" href="bulma/css/bulma.css">
</head>
<body>
    <nav class="navbar-" style="background-color: #3D63EB;" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
          <a class="navbar-item" href="https://bulma.io">
            <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
          </a>
      
          <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
          </a>
        </div>
      
        <div id="navbarBasicExample" class="navbar-menu">
          <div class="navbar-start">
              <a class="navbar-item has-text-white" href="vistacliente.jsp">
              Mis datos personales
            </a>
      
              <a class="navbar-item has-text-white" href="lineasind.jsp">
              Mis lineas
            </a>
      
            <div class="navbar-item has-dropdown is-hoverable">
              <a class="navbar-link has-text-white">
                Mas
              </a>
      
              <div class="navbar-dropdown">
                  <a class="navbar-item " href="creditoind.jsp">
                  Mis creditos
                </a>
                  <a class="navbar-item" href="transferencia.jsp">
                  Tranferencias
                </a>
              </div>
            </div>
          </div>
      
          <div class="navbar-end">
            <div class="navbar-item">
              <div class="buttons">
                <a class="button is-light" href="/bancoo">
                  Salir
                </a>
              </div>
            </div>
          </div>
        </div>
      </nav>
    <form action="Servletcliente" method="post" class="container m-6 p-4 box">
        <h1 class="label">Mis datos</h1>
        <div class="field">
            <label class="label">Documento</label>
            <div class="control">
                <input class="input" type="number" placeholder="Documento" disabled name="adoc">
            </div>
          </div>
          
          <div class="field">
            <label class="label">Nombre</label>
            <div class="control">
                <input class="input" type="text" placeholder="Nombre" name="anom">
            </div>
          </div>
          <div class="field">
            <label class="label">Apellido</label>
            <div class="control">
                <input class="input" type="text" placeholder="Apellido" name="aape">
            </div>
          </div>
          
          <div class="field">
            <label class="label">Correo</label>
            <div class="control">
                <input class="input" type="email" placeholder="e.g. alexsmith@gmail.com" name="aema">
            </div>
          </div>
          <div class="field">
            <label class="label">Celular</label>
            <div class="control">
              <input class="input" type="number" placeholder="Numero de telefono">
            </div>
          </div>
          <div class="field">
            <label class="label">Sexo</label>
            <div class="control">
                <input class="input" type="text" placeholder="Masculino, Femenino, No binario">
            </div>
          </div>
          <div class="field">
            <label class="label">Fecha de nacimiento</label>
            <div class="control">
                <input class="input" type="date" placeholder="Fecha de nacimiento">
            </div>
          </div>
        <button class="button is-success m-2" name="update">Actualizar mi informacion</button>
        </form>
        <form action="" method="post" class="container m-4 p-6 box">
            <h1 class="label">Actualizar Usuario </h1>
            <div class="field">
                <label class="label">Name</label>
                <div class="control">
                  <input class="input" type="text" placeholder="e.g Alex Smith">
                </div>
              </div>
              
              <div class="field">
                <label class="label">Email</label>
                <div class="control">
                  <input class="input" type="email" placeholder="e.g. alexsmith@gmail.com">
                </div>
              </div>
                      <div class="image">
            <label class="label">Foto</label>
            <div class="control">
              <input class="image" type="image" placeholder="e.g. alexsmith@gmail.com">
            </div>
            <div class="file">
                <label class="file-label">
                  <input class="file-input" type="file" name="resume">
                  <span class="file-cta">
                    <span class="file-icon">
                      <i class="fas fa-upload"></i>
                    </span>
                    <span class="file-label">
                      Cargar nueva foto...
                    </span>
                  </span>
                </label>
              </div>
              <button class="button is-success m-4">Cargar foto</button>
          </div>
              <button class="button is-success m-2">Actualizar mi informacion</button>
            </form>
</body>
</html>
