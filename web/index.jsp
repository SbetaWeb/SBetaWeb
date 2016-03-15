<%-- 
    Document   : index
    Created on : 01-mar-2016, 9:54:07
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" type="text/css" href="Estilos/Style.css">  
        <link rel="stylesheet" type="text/css" href="Estilos/demo.css">
        <link rel="stylesheet" type="text/css" href="Estilos/estilo1.css">
        <link rel="stylesheet" type="text/css" href="Estilos/fonts.css">
        <link rel="stylesheet" type="text/css" href="Estilos/slide.css">


        <script src="JavaScript/nobackbutton.js"></script>



        <title> Ingreso al sistema SBETA WEB </title>


    </head>
    <body onload="nobackbutton()">

        <div id="vacio">
            <!-- <header>
 
            <%-- <img src="SBP.png" aling="top" width="185" height="115"  /> --%>

            <nav>

                <ul>

                    <li><a href='#'><span class="primero"><center><img id="icono" src="Imagenes/0032-book.png"/></center></span>Gestión</a>
                        <ul>
                            <li><a href='#'>Películas</a></li>
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
                    <li ><a href='#'><span class="tercero"><center><img id="icono" src="Imagenes/0146-wrench.png"/></center></span>Usuarios</a>
                       
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
                            <li><a href='#'><span>Ayuda acerca de...</span></a></li>
                            <li><a href='#'>Menú Principal</a></li>
                        </ul> 
                    </li>
                </ul>  
            </nav>

        </header> -->


            <form name="validarUsuario" id ="validarUsuario" action="validarUsuario" method="post"> 

                <table id="tabla" >
                    <tr> 
                    <img id="img" src="Imagenes/SBETAweb.png" alt="" width="200" height="200">
                    </tr>
                    
                    <br>
                    
                    <tr>
                        <td id="titulo">...SbetaWeb...</td>
                    </tr>
                    
                    <tr>
                        <td><input title="Usuario,almenos 8 caracteres, minúsculas y mayúsculas " type="text" name="usuario"  id="usuario"  pattern="(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="20"  placeholder="Usuario" size="50" required>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td><input  title="Contraseña,almenos 8 caracteres, minúsculas, mayúsculas y números" type="password" name="clave" id="clave"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="40"  placeholder="Contraseña"size="50" required >
                        </td> 
                    <br> 
                    </tr>

                    <tr id="boton1">
                        <td >
                            <input type="submit" id="boton" value="INGRESAR" name="btningresar" size="50"/>

                        </td>
                    </tr>


                </table>

            </form>

        </div>
        <div id="mensaje-ingreso"> </div>
    </body>

</html>


