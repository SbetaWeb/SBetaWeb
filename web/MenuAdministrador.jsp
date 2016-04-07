<%-- 
    Document   : home
    Created on : 23/07/2014, 03:03:32 PM
    Author     : USUARIO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 

        <meta charset="UTF-8">
        <title>SBETA WEB </title> 
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" href="Estilos/estilos_1.css" >
        <link rel="stylesheet" href="Estilos/fonts.css" type="text/css">
        <link rel="stylesheet" href="Estilos/demo.css"  type="text/css" /> 
        <script src="JavaScript/nobackbutton.js"></script>


    </head>

    <body onload="nobackbutton();"> 


        <br>

        <div id="vacio">
            <header>

                <%-- <img src="SBP.png" aling="top" width="185" height="115"  /> --%>

                <nav>

                    <ul>

                        <li><a href='#'><span class="primero"><center><img id="icono" src="Imagenes/0032-book.png"/></center></span>Productos</a>
                            <ul>
                                <li><a href='peliculas.jsp'>Películas</a></li>
                                <li><a href='#'>Videojuegos</a></li>
                            </ul>
                        </li>



                        <li ><a href='#'><span class="segundo"><center><img id="icono" src="Imagenes/0033-books.png"/></center></span>Servicios</a>
                            <ul>
                                <li><a href='#'><span>Préstamos</span></a></li>
                                <li><a href='#'><span>Devoluciones</span></a></li>
                                <li><a href='#'><span>Compras</span></a></li>

                            </ul>
                        </li>
                        <li ><a href='usuarios.jsp'><span class="tercero"><center><img id="icono" src="Imagenes/0146-wrench.png"/></center></span>Usuarios</a>

                        </li>



                        <li ><a href='#'><span class="cuarto"><center><img id="icono" src="Imagenes/0035-file-text.png"/></center></span>Informes</a>
                            <ul>
                                <li><a href='#'><span>Películas</span></a></li>
                                <li><a href='#'><span>Préstamos</span></a></li>
                                <li><a href='#'><span>Devoluciones</span></a></li>
                                <li><a href='#'><span>Compras</span></a></li>

                            </ul> 
                        </li> 
                        <li ><a href='#'><span class="quinto"><center><img id="icono" src="Imagenes/ayuda.png"/></center></i></span>Ayuda</a>
                            <ul> 
                                <li><a href='#'><span>Manual de usuario</span></a></li>
                                <li><a href='MenuAdministrador.jsp'>Menú Principal</a></li>
                            </ul> 
                        </li>

                        <li ><a href='index.jsp'><span class="sexto"><center><img id="icono" src="Imagenes/salir.png"/></center></i></span>Salir</a>
                        </li> 
                    </ul>  
                </nav>

            </header>
            <center><div id='letra'> 

                    <img src="Imagenes/SBETAweb.png"/>

                </div></center>
        </div>


        <div id="contenedor">

            <div id="body">

                <br>
                <br>
                <br>
                <br>
                <br>

                <h1><b>Tienda de Películas SBETA WEB</b></h1>
                <br>
                <hr >
                <div id="columna">

                    <left><p align="justify">SuperBeta es un establecimiento ubicado en el barrio Aranjuez  
                            en el cuál se presta el servicio de venta y alquiler de todo tipo de peliculas en
                            formatos DVD y BluRay. 
                            Ofrecen películas de todo tipo de géneros y clasificaciones para la comodidad
                            y agrado de sus clientes. </p></left>
                </div>

                <div id="columna3">
                    <a href="#"><img src="Imagenes/facebook.png" alt="facebook" width="100" height="100"></a>
                    <a href="#"><img src="Imagenes/blogger.png"  width="100" height="100"></a>
                    <a href="#"><img src="Imagenes/twiter.png"   width="100" height="100"></a>

                </div>


                <div id="direccion">
                    <p align="justify"><b>Dirección:<br>
                            <br>Carrera 50 C # 91 - 09<br>
                            <br>San Cayetano<br>
                            <br>Aranjuez<br>
                            <br>Medellín, Antioquia<br>
                            <br>Teléfono: 259 02 09</b></p>
                </div>

                <div id="horario">
                    <center><h2>Horarios de atención</h2></center>
                    <br>
                    <center><hr width="73%"></center>
                    <br>
                    <center>  <b><p> <br>
                                Lunes a viernes: 1:00 p.m. a 10:00 p.m.<br>
                                <br>

                                Sábados: 2:00 p.m. a 10:00 p.m.<br>
                                <br>

                                Domingos y festivos: 3:00 p.m a 8:00 p.m<br>
                            </p></b> </center>
                </div>

            </div>

        </div>

        <%--<div class="slider">
            <input type="radio" class="boton" name="boton" checked="checked">
        <label></label> 
        <input type="radio" class="boton" name="boton">
        <label></label>
        <input type="radio" class="boton" name="boton">
        <label> </label>
        <input type="radio" class="boton" name="boton">
        <label></label>
        
        <div class="contenedor-img cuatro-imagenes">
        <img src="imagen1.jpg" width="100" height="100">
        <img src="imagen2.jpg" width="100" height="160">
        <img src="imagen3.jpg" width="100" height="160">
        <img src="imagen4.jpg" width="100" height="160">
</div> --%>
        <script src="particles.js"></script>
        <script src="particulas.js"></script>

    </body>
</html>
