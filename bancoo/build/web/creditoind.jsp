<%-- 
    Document   : creditoind
    Created on : 6 mar 2022, 18:37:27
    Author     : PC
--%>

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
    </body>
</html>
