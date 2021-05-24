<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form action="Control" method="post">



                <div class="form-group">
                    <label>DNI</label>
                    <input class="form-control" type="text" name="dni" value="${cli.getDni()}">
                </div>

                <div class="form-group">
                    <label>Nombre</label>
                    <input class="form-control" type="text" name="nombre" value="${cli.getNombre()}">
                </div>

                <div class="form-group">
                    <label>Apellido Paterno</label>
                    <input class="form-control" type="text" name="ape_paterno" value="${cli.getApe_paterno()}">
                </div>

                <div class="form-group">
                    <label>Apellido Materno</label>
                    <input class="form-control" type="text" name="ape_paterno" value="${cli.getApe_materno()}">
                </div>

                <div class="form-group">

                    <label>sexo</label>
                    <input class="form-control" type="text" name="ape_paterno" value="${cli.getSexo()}">
                </div>

                <div class="form-group">
                    <label>Telefono</label>
                    <input class="form-control" type="text" name="telefono" value="${cli.getTelefono()}">
                </div>

                <div class="form-group">
                    <label>Correo</label>
                    <input class="form-control" type="text" name="correo" value="${cli.getCorreo()}">
                </div>

                <div class="form-group">
                    <label>Contraseña</label>
                    <input class="form-control" type="text" name="correo" value="${cli.getContrasena()}">
                </div>

                <div class="form-group">
                    <label>Distrito</label>
                    <select class="form-control" name="distrito">
                        <c:forEach var="lis" items="${lista}">
                            <c:if test="${lis.getNombre().equalsIgnoreCase(cli.getDistrito())}">
                                <option value="${lis.getDni()}" selected="${cli.getDistrito()}">${lis.getNombre()}</option>                        
                            </c:if>
                            <option value="${lis.getDni()}">${lis.getNombre()}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">
                    <label>Direccion</label>
                    <input class="form-control" type="text" name="direccion" value="${cli.getDireccion()}">
                </div>

                <div class="form-group">
                    <label>Referencia</label>
                    <input class="form-control" type="text" name="direccion" value="${cli.getReferencia()}">
                </div>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar Cliente">  

            </form>
        </div>
        <script src="../../js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>

