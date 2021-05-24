<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Relacion de clientes</h1>
        <table>
            <tr>
                <th>DNI</th>
                <th>Tipo</th>
                <th>Nombre</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Sexo</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th>Contraseña</th>
                <th>Direccion</th>
            </tr>
            <c:forEach var="lis" items="${lista}">
            <tr>                
                <td>${lis.getDni()}</td>
                <td>${lis.getTipo()}</td>
                <td>${lis.getNombre()}</td>
                <td>${lis.getApe_paterno()}</td>
                <td>${lis.getApe_materno()}</td>
                <td>${lis.getSexo()}</td>
                <td>${lis.getTelefono()}</td>
                <td>${lis.getCorreo()}</td>
                <td>${lis.getContrasena()}</td>
                <td>${lis.getDireccion()}</td>
                <td>
                    <a href="Control?accion=EditarCliente&dni=${lis.getDni()}">Editar</a>
                    <a href="Control?accion=EliminarCliente&dni=${lis.getDni()}">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>