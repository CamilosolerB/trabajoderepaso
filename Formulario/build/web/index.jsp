<%-- 
    Document   : index
    Created on : 7 feb 2022, 21:08:30
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href="/dist/output.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Formulario con java web</title>
    </head>
    <body>
        <%
            int progreso = 0;
            int puntaje = 0;
        %>
            <nav class="barra">
                <p>Progreso del examen</p>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: <%=progreso%>;" aria-valuenow="<%=progreso%>" aria-valuemin="0" aria-valuemax="100"><%=progreso%></div>
                </div>
                    <p class="valorpunt">Mi puntaje:<%=puntaje%></p>
            </nav>
            <h1 class="title">Examen de prueba basica</h1>
            <!-- Inicio del formulario -->
            <form action="action">
                <div class="container">
                    <h3>Los bunkers son una banda:</h3>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="Argentina" name="respuesta1" id="flexRadioDefault1" checked>
                            <label class="form-check-label" for="flexRadioDefault1">Argentina</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" value="" name="respuesta1" id="flexRadioDefault2">
                          <label class="form-check-label" for="flexRadioDefault2">Uruguaya</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="respuesta1" id="flexRadioDefault3">
                            <label class="form-check-label" for="flexRadioDefault3">Chilena</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="respuesta1" id="flexRadioDefault4">
                          <label class="form-check-label" for="flexRadioDefault4">Boliviana</label>
                        </div>
                </div>
                <div class="container">
                    <h3>¿Que significa NFT?</h3>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="Argentina" name="respuesta2" id="flexRadioDefault1" checked>
                            <label class="form-check-label" for="flexRadioDefault1">Argentina</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" value="" name="respuesta2" id="flexRadioDefault2">
                          <label class="form-check-label" for="flexRadioDefault2">Uruguaya</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="respuesta2" id="flexRadioDefault3">
                            <label class="form-check-label" for="flexRadioDefault3">Chilena</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="respuesta2" id="flexRadioDefault4">
                          <label class="form-check-label" for="flexRadioDefault4">Boliviana</label>
                        </div>
                </div>
                <div class="container">
                    <h3>¿Quien creo "The man who sold the world"?</h3>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="Argentina" name="respuesta3" id="flexRadioDefault1" checked>
                            <label class="form-check-label" for="flexRadioDefault1">Argentina</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" value="" name="respuesta3" id="flexRadioDefault2">
                          <label class="form-check-label" for="flexRadioDefault2">Uruguaya</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="respuesta3" id="flexRadioDefault3">
                            <label class="form-check-label" for="flexRadioDefault3">Chilena</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="respuesta3" id="flexRadioDefault4">
                          <label class="form-check-label" for="flexRadioDefault4">Boliviana</label>
                        </div>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-primary">Subir respuesta</button>
                </div>
            </form>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
