<%-- 
    Document   : tablalineas
    Created on : 21/02/2022, 4:43:26 p. m.
    Author     : SENA
--%>

<%@page import="modelo.LineaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Linea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de lineas</title>
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
                <li><a href="/bancoo">Insertar</a></li>
                <li><a href="#">Consultar</a></li>
            </ul>
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banco_Santander_Logotipo_%282007-2018%29.svg/2560px-Banco_Santander_Logotipo_%282007-2018%29.svg.png" class="foto"/>
            </div>
        </nav>
        <h1 style="text-align: center;">Tabla de Clientes</h1>
        <section class="section">
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Codigo de linea</th>
                <th scope="col">Numero de linea</th>
                <th scope="col">Monto maximo</th>
                <th scope="col">Plazo maximo</th>
                <th scope="col">Opciones</th>
              </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Linea> listado = new ArrayList<Linea>();
                LineaDAO usdao = new LineaDAO();
                listado=usdao.consultausuario();
                for(Linea lista: listado){   
            %>
            <form action="Servletlinea" method="post">
              <tr>
                  <th scope="row" ><input type="type" value="<%=lista.getCodigo()%>" name="acod"></th>
                  <td><input type="text" value="<%=lista.getNumero()%>" name="anum"></td>
                  <td><input type="text" value="<%=lista.getMonto()%>" name="amon"></td>
                  <td><input type="number" value="<%=lista.getPlazo()%>" name="apla"></td>
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
