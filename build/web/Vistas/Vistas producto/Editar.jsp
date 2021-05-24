
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
        <h1>Editar producto</h1>
        <form action="Control" method="post">
            <label>Sub categoria</label>
            <input type="text" name="subcategoria" value="${p.getSubcategoria()}"><br>
            <label>Nombre</label>
            <input type="text" name="nombre" value="${p.getNombre()}"><br>
            <label>Precio</label>
            <input type="text" name="precio" value="${p.getPrecio()}"><br>
            <label>Stock</label>
            <input type="text" name="stock" value="${p.getStock()}"><br>
            <input type="submit" name="accion" value="Editar producto">
        </form>
            
            
            
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>