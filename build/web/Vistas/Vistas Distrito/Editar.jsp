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
        <h1>Editar distrito</h1>
        <form action="Control" method="post">
            <label>Nombre de distrito</label>
            <input type="text" name="nombre" value="${dist.getNombre()}"><br>
            <label>Costo de Envio</label>
            <input type="text" name="costo" value="${dist.getCosto()}"><br>
            <input type="submit" name="accion" value="Editar distrito">
        </form>
            
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>

