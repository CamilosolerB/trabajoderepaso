<%-- 
    Document   : tablacredito
    Created on : 22 feb 2022, 22:10:03
    Author     : PC
--%>

<%@page import="modelo.CreditoDAO"%>
<%@page import="modelo.Credito"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="https://e7.pngegg.com/pngimages/181/292/png-clipart-santander-group-santander-bank-logo-quiz-ultimate-bank-text-hand.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Tabla de creditos</title>
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
        <h1 style="text-align: center;">Tabla de Creditos</h1>
        <section class="section">
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Documento</th>
                <th scope="col">Codigo de linea</th>
                <th scope="col">Monto</th>
                <th scope="col">Fecha de generacion</th>
                <th scope="col">Plazo</th>
                <th scope="col">Opciones</th>
              </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Credito> listado = new ArrayList<Credito>();
                CreditoDAO usdao = new CreditoDAO();
                listado=usdao.Consultacredito();
                for(Credito lista: listado){   
            %>
            <form action="Servletcreditos" method="post">
              <tr>
                  <th scope="row" ><input type="type" value="<%=lista.getCodigo()%>" name="acod"></th>
                  <td><input type="text" value="<%=lista.getDocumento()%>" name="adoc"></td>
                  <td><input type="text" value="<%=lista.getCodlinea()%>" name="acod"></td>
                  <td><input type="text" value="<%=lista.getMonto()%>" name="amon"></td>
                  <td><input type="date" value="<%=lista.getFecha()%>" name="afec"></td>
                  <td><input type="text" value="<%=lista.getPlazo()%>" name="apla"></td>
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
