<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.cliente_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container pt-5  pb-5">


            <h1>Agregar Producto</h1>

            <form action="Control" method="POST">

                <div class="form-group mt-3">

                    <label>Sub Categoria</label>

                    <select class="form-control" name="subcategoria">
                        <c:forEach var="lis" items="${lista}">
                            <option value="${lis.getId()}">${lis.getSubcategoria()}</option>
                        </c:forEach>
                    </select>

                </div>


                <div class="form-group">
                    <label>Nombre</label>
                    <input class="form-control" type="text" name="nombre">
                </div>


                <div class="form-group">
                    <label>Precio</label>
                    <input class="form-control" type="text" name="precio">
                </div>

                <div class="form-group"> 
                    <label>Stock</label>
                    <input class="form-control" type="text" name="stock">
                </div>
                
                <div class="form-group"> 

                    <select class="form-control" name="nombre">
                        <c:forEach var="lis" items="${lista}">
                            <option value="${lis.getNombre()}">${lis.getPrecio()}</option>
                        </c:forEach>
                    </select><br> 

                </div>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar Producto">  

            </form>

        </div>

        <script src="../../js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>