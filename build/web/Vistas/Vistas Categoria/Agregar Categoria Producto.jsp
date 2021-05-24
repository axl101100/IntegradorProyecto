<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Categoria Producto</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"> 
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <h1>Agregar Categoria Producto</h1>
        <form action="Control" method="post">
            Nombre:
            <select name="nombre">
                <c:forEach var="lis" items="${lista}">
                    <option value="${lis.getId()}">${lis.getNombre()}</option>
                </c:forEach>
            </select><br>  
            Codigo:
            <input type="text" name="codigo"><br>

            <input type="submit" name="accion" value="Agregar categoria">
        </form>

        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>