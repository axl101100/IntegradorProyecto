<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title> 
        <link href="css/bootstrap.min.css" rel="stylesheet"> 
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>

        <div class="container">


            <table>
                <form class="">

                    <div class="row justify-content-sm-center pb-5">
                        <div class="col-sm-6">

                            <fieldset class="m-3 p-3" style=" border: 5px solid #c5c9c9; ">


                                <font color="Blue" face="Comic Sans MS,arial">

                                <h1 align="center"><i>¡Empieza a ahorrar!</i></h1>

                                <div class="form-group">

                                    <label for="exampleInputEmail1">Documento de Identidad</label>

                                    <select class="form-control" name="Documento">
                                        <option>DNI</option>
                                        <option>Carnet de Extranjería</option>
                                    </select>

                                </div>

                                <p></p>

                                <input id="DNI" class="form-control" placeholder="DNI/Carnet de Extranjería" maxlength="12" type="text" name="DNI">

                                <p></p>


                                <input id="Nombre" class="form-control" placeholder="Nombres" maxlength="50" type="text" name="nombre">

                                <p></p>


                                <input id="Apellido Pat" class="form-control" placeholder="Apellido Paterno" maxlength="50" type="text" name="apellido pat">

                                <p></p>
                                <input id="Apellido Mat" class="form-control" placeholder="Apellido Materno" maxlength="50" type="text" name="apellido mat">

                                <p>Nacimiento: </p>
                                <select class="form-control" name="fecha">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                                    <option>29</option>
                                    <option>30</option>
                                    <option>31</option>
                                </select>
                                <select class="form-control mt-2" name="mes">
                                    <option>Enero</option>
                                    <option>Febrero</option>
                                    <option>Marzo</option>
                                    <option>Abril</option>
                                    <option>Mayo</option>
                                    <option>Junio</option>
                                    <option>Julio</option>
                                    <option>Agosto</option>
                                    <option>Setiembre</option>
                                    <option>Octubre</option>
                                    <option>Noviembre</option>
                                    <option>Diciembre</option>
                                </select>
                                <select class="form-control mt-2" name="año">
                                    <option>2003</option>
                                    <option>2002</option>
                                    <option>2001</option>
                                    <option>2000</option>
                                    <option>1999</option>
                                    <option>1998</option>
                                    <option>1997</option>
                                    <option>1996</option>
                                    <option>1995</option>
                                    <option>1994</option>
                                    <option>1993</option>
                                    <option>1992</option>
                                    <option>1991</option>
                                    <option>1990</option>
                                    <option>1989</option>
                                    <option>1988</option>
                                    <option>1987</option>
                                    <option>1986</option>
                                    <option>1985</option>
                                    <option>1984</option>
                                    <option>1983</option>
                                    <option>1982</option>
                                    <option>1981</option>
                                    <option>1980</option>
                                    <option>1979</option>
                                    <option>1978</option>
                                    <option>1977</option>
                                    <option>1976</option>
                                    <option>1975</option>
                                    <option>1974</option>
                                    <option>1973</option>
                                    <option>1972</option>
                                    <option>1971</option>
                                    <option>1970</option>
                                    <option>1969</option>
                                    <option>1968</option>
                                    <option>1967</option>
                                    <option>1966</option>
                                    <option>1965</option>
                                    <option>1964</option>
                                    <option>1963</option>
                                    <option>1962</option>
                                    <option>1961</option>
                                    <option>1960</option>
                                    <option>1959</option>
                                    <option>1958</option>
                                    <option>1957</option>
                                    <option>1956</option>
                                    <option>1955</option>
                                    <option>1954</option>
                                    <option>1953</option>
                                    <option>1952</option>
                                    <option>1951</option>
                                    <option>1950</option>
                                    <option>1949</option>
                                    <option>1948</option>
                                    <option>1947</option>
                                    <option>1946</option>
                                    <option>1945</option>
                                    <option>1944</option>
                                    <option>1943</option>
                                    <option>1942</option>
                                    <option>1941</option>
                                    <option>1940</option>
                                </select>

                                <p>Género:</p>
                                <select class="form-control" name="Documento">
                                    <option>Masculino</option>
                                    <option>Femenino</option>
                                </select>


                                <div class="form-group">

                                    <label for="exampleInputEmail1">Distrito:</label>

                                    <select class="form-control" name="Distrito">
                                        <option>Cercado de Lima</option>
                                        <option>Ate</option>
                                        <option>Barranco</option>
                                        <option>Breña</option>
                                        <option>Comas</option>
                                        <option>Chorrillos</option>
                                        <option>El Agustino</option>
                                        <option>Jesús María</option>
                                        <option>La Molina</option>
                                        <option>La Victoria</option>
                                        <option>Lince</option>
                                        <option>Magdalena del Mar</option>
                                        <option>Miraflores</option>
                                        <option>Pueblo Libre</option>
                                        <option>Puente Piedra</option>
                                        <option>Rimac</option>
                                        <option>San Isidro</option>
                                        <option>Independencia</option>
                                        <option>San Juan de Miraflores</option>
                                        <option>San Luis</option>
                                        <option>San Martin de Porres</option>
                                        <option>San Miguel</option>
                                        <option>Santiago de Surco</option>
                                        <option>Surquillo</option>
                                        <option>Villa María del Triunfo</option>
                                        <option>San Juan de Lurigancho</option>
                                        <option>Santa Rosa</option>
                                        <option>Los Olivos</option>
                                        <option>San Borja</option>
                                        <option>Villa El Savador</option>
                                        <option>Santa Anita</option>
                                    </select>

                                </div>


                                <input id="Direccion" class="form-control mt-3" placeholder="Dirección" maxlength="100" type="text" name="Direccion">


                                <input id="Email" class="form-control mt-3" placeholder="Email" maxlength="100" type="text" name="Email">


                                <input id="Celular" class="form-control mt-3" placeholder="Celular" maxlength="9" type="text" name="Celular">

                                <p>Términos y Condiciones</p>

                                <p>
                                    <input type="checkbox" class="m-2" name="terminos1" >He leído y acepto los <a class="link-enlace" href="Documentos/Terminos y Condiciones.pdf" target="blanco">términos y condiciones</a> del Monedero del Ahorro<br>
                                    <span class="ckeckmark"></span>
                                </p>



                                <input type="checkbox" class="m-2" name="terminos2" >He leído y acepto los <a class="link-enlace" href="Documentos/Tratamiento de Datos Personales.pdf" target="blanco">tratamiento de mis datos personales</a>, lo que implica mi registro en el programa del Monedero del Ahorro. <br>
                                <span class="ckeckmark"></span>

                                <input id="Contraseña" class="form-control mt-3" placeholder="Inserte Contraseña" maxlength="25" type="password" name="">

                                <input id="Contraseña" class="form-control mt-3" placeholder="Inserte Contraseña otra vez" maxlength="25" type="password" name="">
                                <p>La contraseña debe tener entre 6 y 25 caracteres de longitud y contener, como máximo, 1 número y 1 letra Mayuscula</p>

                                <input type="button" class="form-control btn-success" name="AFILIATE AHORA" value="AFILIATE AHORA" style="Solid: rgb(128,128,128) 1px dashed; FONT-SIZE: 20pt; FONT-FAMILY: Comic Sans MS;">

                            </fieldset>

                        </div>
                    </div>


                </form>
            </table> 


        </div>

        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>

    </body>
</html>
