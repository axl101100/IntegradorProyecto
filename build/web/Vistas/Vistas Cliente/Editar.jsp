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
        <form action="Control" method="post">
            <label>DNI</label>
            <input type="hidden" name="dni" value="${cli.getDni()}"><br>
            <label>Nombre</label>
            <input type="text" name="nombre" value="${cli.getNombre()}"><br>
            <label>Apellido Paterno</label>
            <input type="text" name="ape_paterno" value="${cli.getApe_paterno()}"><br>
            <label>Apellido Materno</label>
            <input type="text" name="ape_paterno" value="${cli.getApe_materno()}"><br>
            <label>sexo</label>
            <input type="text" name="ape_paterno" value="${cli.getSexo()}"><br>
            <label>Telefono</label>
            <input type="text" name="telefono" value="${cli.getTelefono()}"><br>
            <label>Correo</label>
            <input type="text" name="correo" value="${cli.getCorreo()}"><br>
            <label>Contraseña</label>
            <input type="text" name="correo" value="${cli.getContrasena()}"><br>
            <label>Distrito</label>
            <select name="distrito">
            <c:forEach var="lis" items="${lista}">
                    <c:if test="${lis.getNombre().equalsIgnoreCase(cli.getDistrito())}">
                        <option value="${lis.getDni()}" selected="${cli.getDistrito()}">${lis.getNombre()}</option>                        
                    </c:if>
                    <option value="${lis.getDni()}">${lis.getNombre()}</option>
                </c:forEach>
            </select><br> 
            <label>Direccion</label>
            <input type="text" name="direccion" value="${cli.getDireccion()}"><br>
            <label>Referencia</label>
            <input type="text" name="direccion" value="${cli.getReferencia()}"><br>
            <input type="submit" name="accion" value="Actualizar Cliente">  
        </form>
            
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js"  type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    </body>
</html>

