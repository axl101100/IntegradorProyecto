<%@page import="java.util.List"%>
<%@page import="modeloDAO.subCatProducto_DAO"%>
<%@page import="modelo.subcategoria_producto"%>
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
        <h1>Listar subcategoria producto</h1>  
        <table>
            <tr>
                <th>Categoria</th>
                <th>Nombre</th>
            </tr>           
            <c:forEach var="lis" items="${lista}">
            <tr>
                <td>${lis.getCategoria()}</td>
                <td>${lis.getNombre()}</td>
                <td>
                    <a href="Control?accion=editarDistrito&codigo=${lis.getId()}">Editar</a>
                    <a href="Control?accion=eliminarDistrito&codigo=${lis.getId()}">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        
        
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>