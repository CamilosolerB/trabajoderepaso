<%-- 
    Document   : consultausuarios
    Created on : 21/02/2022, 1:38:03 p. m.
    Author     : SENA
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
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
                <li><a href="">Insertar</a></li>
                <li><a href="">Consultar</a></li>
                <li><a href="">Actualizar</a></li>
                <li><a href="">Eliminar</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Tabla de Usuarios</h1>
        <section class="section">
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Documento</th>
                <th scope="col">Nombre</th>
                <th scope="col">Clave</th>
                <th scope="col">Rol</th>
                <th scope="col">Estado</th>
                <th scope="col">imagen</th>
                <th scope="col">Opciones</th>
              </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Usuario> listado = new ArrayList<Usuario>();
                UsuarioDAO usdao = new UsuarioDAO();
                listado=usdao.consultausuario();
                for(Usuario lista: listado){   
            %>
            <form action="Servletusuario" method="post">
              <tr>
                  <th scope="row" ><input type="type" value="<%=lista.getDocumento()%>" name="adoc"></th>
                <td><input type="type" value="<%=lista.getUsuario()%>" name="ausu"></td>
                <td><input type="type" value="<%=lista.getClave()%>" name="acla"></td>
                <td><input type="type" value="<%=lista.getRol()%>" name="arol"></td>
                <td><input type="type" value="<%=lista.getEstado()%>" name="aest"></td>
                <td><input type="type" value="<%=lista.getImagen()%>" name="aimg"></td>
                <td>
                    <button name="update" class="btn btn-success"><i class="fa-solid fa-pen-clip"></i></button>
                    <button name="delete" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
                </td>
              </tr>
            </form>
              <%}%>
            </tbody>
          </table>
        </section>
    </body>
</html>
