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
        <link rel="stylesheet" type="text/css" href="Estilos/galeriapeliculas.css">
        <script src="JavaScript/nobackbutton.js"></script>
        
        <title> Ingreso al sistema SBETA WEB </title>


    </head>
    <body onload="nobackbutton()">
        
        <div id="vacio">
                      
            <form name="validarUsuario" id ="validarUsuario" action="validarUsuario" method="post"> 

                <table id="tabla" >
                     
                    <tr> 
                    <img id="img" src="Imagenes/SBETAweb.png" alt="" width="200" height="200">
                    </tr>
                    
                    <br>
                    <br>
                    <hr width="2%" > 
                    <tr>
                        <td id="titulo">SbetaWeb</td>
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
                <br>
                <hr width="2%" >
            </form>
            <br>  
             
        </div>
        <div id="mensaje-ingreso"> </div>
        <div id="particles-js" ></div>
        <script src="JavaScript/particles.js"></script>
        <script src="JavaScript/particulas.js"></script>
        <br>
        <br>
        <h1>Películas</h1>
        
        <br>
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/hobitportada.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...El Hobbit...</h2><br>
                        <p>Calidad: 1080p HD</p><br>
                        <p>Género: Aventura</p><br>
                        <p>Director: J.R. Tolkien</p><br>
                        <p>Año: 2014</p><br>
                        <p>Subtitulos: Latino</p><br>
                        <p>Audio: Ingles</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/mecanica.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...La Naranja Mecánica...</h2><br>
                        <p>Calidad: Blu Ray</p><br>
                        <p>Género: Drama, Ciencia Ficción</p><br>
                        <p>Director: Stanley Kubrick</p><br>
                        <p>Año: 1971</p><br>
                        <p>Subtitulos: Ingles</p><br>
                        <p>Audio: Español</p><br>
                        <p>País: Reino Unido</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/ironman.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Iron Man 2...</h2><br>
                        <p>Calidad: 1080p HD, 3D</p><br>
                        <p>Género: Ciencia Ficción, Superhéroes</p><br>
                        <p>Director: Jon Favreau</p><br>
                        <p>Año: 2010</p><br>
                        <p>Subtitulos: No</p><br>
                        <p>Audio: Latino</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <%-- Otra linea de paliculas --%>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/ageofultron.png">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Avengers Era de Ultron...</h2><br>
                        <p>Calidad: 1080p HD</p><br>
                        <p>Género: Superhéroes</p><br>
                        <p>Director: Stan Lee</p><br>
                        <p>Año: 2015</p><br>
                        <p>Subtitulos: Latino</p><br>
                        <p>Audio: Español</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/interstellar1.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Interstellar...</h2><br>
                        <p>Calidad: HD 1080P</p><br>
                        <p>Género: Ciencia Ficción</p><br>
                        <p>Director: Stanley Kubrick</p><br>
                        <p>Año: 2014</p><br>
                        <p>Subtitulos: Ingles</p><br>
                        <p>Audio: Español</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/madmax.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Mad Max...</h2><br>
                        <p>Calidad: 1080p HD, 3D</p><br>
                        <p>Género: Acción</p><br>
                        <p>Director: </p><br>
                        <p>Año: 2015</p><br>
                        <p>Subtitulos: Español</p><br>
                        <p>Audio: Latino</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
               
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/alicia.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Alicia en el País de las Maravillas...</h2><br>
                        <p>Calidad: 1080p HD</p><br>
                        <p>Género: Aventura</p><br>
                        <p>Director: </p><br>
                        <p>Año: </p><br>
                        <p>Subtitulos: Latino</p><br>
                        <p>Audio: Ingles</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/perfume.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...El Perfume...</h2><br>
                        <p>Calidad: HD 720p</p><br>
                        <p>Género: Drama</p><br>
                        <p>Director: </p><br>
                        <p>Año: </p><br>
                        <p>Subtitulos: Ingles</p><br>
                        <p>Audio: Español</p><br>
                        <p>País: Reino Unido</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/shrek.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Shrek...</h2><br>
                        <p>Calidad: 1080p HD</p><br>
                        <p>Género: Animación</p><br>
                        <p>Director: </p><br>
                        <p>Año: </p><br>
                        <p>Subtitulos: Latino</p><br>
                        <p>Audio: Latino</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
                
                <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/tron.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Tron...</h2><br>
                        <p>Calidad: 1080p HD</p><br>
                        <p>Género: Aventura</p><br>
                        <p>Director: </p><br>
                        <p>Año: 2014</p><br>
                        <p>Subtitulos: Latino</p><br>
                        <p>Audio: Ingles</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/pixels.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Pixeles...</h2><br>
                        <p>Calidad: Blu Ray</p><br>
                        <p>Género: Animación, Comedia</p><br>
                        <p>Director: Stanley Kubrick</p><br>
                        <p>Año: 2015</p><br>
                        <p>Subtitulos: Ingles</p><br>
                        <p>Audio: Español</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
        
        <div class="contenedorpelicula">
            <div class="carta">
                <div class="lado adelante">
                    <img class="pelicula" src="Imagenes/aliens.jpg">
                    
                </div>

                <div class="lado atras">
                    <center><br><h2>...Monstruos Vs Aliens...</h2><br>
                        <p>Calidad: 3D</p><br>
                        <p>Género: Ciencia Ficción, Animación</p><br>
                        <p>Director: </p><br>
                        <p>Año: 2010</p><br>
                        <p>Subtitulos: Inglés</p><br>
                        <p>Audio: Latino</p><br>
                        <p>País: Estados Unidos</p></center>
                </div>
            </div>
        </div>
               
    </body>

</html>


