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
        <h1>Agregar Sub Categoria Producto</h1>
        <form action="Control" method="post">
            Categoria:
         <select name="SubcCategoria">
                <c:forEach var="lis" items="${lista}">
                    <option value="${lis.getId()}">${lis.getCategoria()}</option>
                </c:forEach>
            </select><br>  
            Nombre:
            <input type="text" name="nombre"><br>
            
            <input type="submit" name="accion" value="Agregar SubCatPro">
        </form>
                
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>