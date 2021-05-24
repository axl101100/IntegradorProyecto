<%@page import="java.util.List"%>
<%@page import="modeloDAO.producto_DAO"%>
<%@page import="modelo.producto"%>
<%@page import="java.util.ArrayList"%>
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

        <div class="container">

            <h1>Listar productos</h1>  
            <table class="table table-striped">
                <tr>
                    <th>Subcategoria</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Stock</th>
                </tr>           
                <c:forEach var="lis" items="${lista}">
                    <tr>
                        <td>${lis.getSubcategoria()}</td>
                        <td>${lis.getNombre()}</td>
                        <td>${lis.getPrecio()}</td>
                        <td>${lis.getStock()}</td>
                        <td>
                            <a href="Control?accion=editarProducto&codigo=${lis.getNombre()}">Editar</a>
                            <a href="Control?accion=eliminarProducto&codigo=${lis.getNombre()}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

        </div>

        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>

    </body>
</html>
