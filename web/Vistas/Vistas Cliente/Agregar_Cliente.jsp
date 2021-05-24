<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.cliente_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container pt-5  pb-5 ">
            <h1>REGISTRO CLIENTE</h1>
            <form action="Control" method="post">

                <div class="form-group">
                    <label>Dni</label>
                    <input class="form-control" type="text" name="dni">
                </div>

                <div class="form-group">
                    <label>Nombre</label>
                    <input class="form-control" type="text" name="nombre">
                </div>

                <div class="form-group">
                    <label>Apellido Paterno</label>
                    <input class="form-control" type="text" name="ape_paterno">
                </div>

                <div class="form-group">
                    <label>Apellido Materno</label>
                    <input class="form-control" type="text" name="ape_materno">
                </div>

                <div class="form-group">
                    <label>Sexo</label>
                    <input class="form-control" type="text" name="sexo">
                </div>

                <div class="form-group">
                    <label>Telefono</label>
                    <input class="form-control" type="text" name="telefono">
                </div>


                <div class="form-group">
                    <label>Correo</label>
                    <input class="form-control" type="text" name="correo"> 
                </div>


                <div class="form-group">
                    <label>Contraseña</label>
                    <input class="form-control" type="text" name="contrasena">
                </div>


                <div class="form-group">
                    <label>Distrito</label>
                    <select class="form-control" name="distrito">
                        <c:forEach var="lis" items="${lista}">
                            <option value="${lis.getDni()}">${lis.getNombre()}</option>
                        </c:forEach>
                    </select> 
                </div>


                <div class="form-group">
                    <label>Direccion</label>
                    <input class="form-control" type="text" name="direccion">
                </div>


                <div class="form-group">
                    <label>Referencia</label>
                    <input class="form-control" type="text" name="referencia">
                </div>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar Cliente">  
            </form>
        </div>
        <script src="../../js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
