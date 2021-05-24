<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container pt-5  pb-5 ">

            <h1>Agregar Sub Categoria Producto</h1>
            <form action="Control" method="post">
                <div class="form-group">
                    <label>Categoria:</label>
                    <select class="form-control" name="SubcCategoria">
                        <c:forEach var="lis" items="${lista}">
                            <option value="${lis.getId()}">${lis.getCategoria()}</option>
                        </c:forEach>
                    </select>  
                </div>
                <div class="form-group">

                    <label>Nombre:</label>
                    <input class="form-control" type="text" name="nombre">
                </div>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar SubCatPro">
            </form>

        </div>

        <script src="../../js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>