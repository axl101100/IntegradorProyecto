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
        <h1>Editar categoria producto</h1>
        <form action="Control" method="post">
            <label>Categoria</label>
            <input type="text" name="nombre" value="${dist.getCategoria()}"><br>
            <label>Nombre</label>
            <input type="text" name="costo" value="${dist.getNombre()}"><br>
            <input type="submit" name="accion" value="Editar subcategoria">
        </form>
            
            
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>
