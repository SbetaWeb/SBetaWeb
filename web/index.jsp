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
    </body>

</html>


