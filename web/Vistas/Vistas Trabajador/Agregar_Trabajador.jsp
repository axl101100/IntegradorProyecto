<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.cliente_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="css/bootstrap.min.css" rel="stylesheet"> 
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <h1>REGISTRO TRABAJADOR</h1>
        <form action="Control" method="post">
            <label>Dni</label>
            <input type="text" name="dni"><br>
            <label>Tipo</label>
            <input type="text" name="tipo"><br>
            <label>Nombre</label>
            <input type="text" name="nombre"><br>
            <label>Apellido Paterno</label>
            <input type="text" name="ape_paterno"><br>
            <label>Apellido Materno</label>
            <input type="text" name="ape_materno"><br>
            <label>Sexo</label>
            <input type="text" name="sexo"><br>
            <label>Telefono</label>
            <input type="text" name="telefono"><br>
            <label>Correo</label>
            <input type="text" name="correo"><br>   
            <label>Contraseña</label>
            <input type="text" name="contrasena"><br> 
            <label>Direccion</label>
            <input type="text" name="direccion"><br>
            <input type="submit" name="accion" value="Agregar Trabajador">  
        </form>
        
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>
