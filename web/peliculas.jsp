<%@page import="Clases.Datos"%>
<%@page import="Clases.Pelicula"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Formulario De Peliculas</title>
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" href="Estilos/estilo1.css" >
        <link rel="stylesheet" href="Estilos/fonts.css" type="text/css">
        <link rel="stylesheet" href="Estilos/demo.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/slide.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/jsp.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/estilos_2.css"  type="text/css" />
        <script src="JavaScript/nobackbutton.js"></script> 

    </head>

    <body onload="nobackbutton()">
        
        <% 
            
        String mensaje = "";
            
        boolean insertar = false;
        boolean consultar = false;
        boolean modificar = false;
        boolean eliminar = false;
        boolean limpiar = false;
        boolean listar = false;
        
        if(request.getParameter("insertar") != null) insertar = true;
        if(request.getParameter("consultar") != null) consultar = true;
        if(request.getParameter("modificar") != null) modificar = true;
        if(request.getParameter("eliminar") != null) eliminar = true;
        if(request.getParameter("limpiar") != null) limpiar = true;
        if(request.getParameter("listar") != null) listar = true;
        
        String nombrePelicula = "";
        String calidad = "";
        String genero = "";
        String director = "";
        String anio = "";
        String subtitulos = "";
        String audio = "";
        String pais = "";
        String cantidad = "";
        String estado = "";
        
        if(request.getParameter("nombrePelicula") != null) nombrePelicula = request.getParameter("nombrePelicula");
        if(request.getParameter("calidad") != null) calidad = request.getParameter("calidad");
        if(request.getParameter("genero") != null) genero = request.getParameter("genero");
        if(request.getParameter("director") != null) director = request.getParameter("director");
        if(request.getParameter("anio") != null) anio = request.getParameter("anio");
        if(request.getParameter("subtitulos") != null) subtitulos = request.getParameter("subtitulos");
        if(request.getParameter("audio") != null) audio = request.getParameter("audio");
        if(request.getParameter("pais") != null) pais = request.getParameter("pais");
        if(request.getParameter("cantidad") != null) cantidad = request.getParameter("cantidad");
        if(request.getParameter("estado") != null) estado = request.getParameter("estado");
        
        if (consultar){
            if(nombrePelicula == null){
                mensaje = "Debes Digitar una Película para la Consulta";
            }
        Datos misDatos = new Datos();
        Pelicula miPelicula = misDatos.getPelicula(nombrePelicula);
        
        if(miPelicula == null){
           mensaje = "Película no existe";
        }else {
            nombrePelicula = miPelicula.getNombrePelicula();
            calidad = miPelicula.getCalidad();
            genero = miPelicula.getGenero();
            director = miPelicula.getDirector();
            anio = miPelicula.getAnio();
            subtitulos = miPelicula.getSubtitulos();
            audio = miPelicula.getAudio();
            pais  = miPelicula.getPais();
            cantidad = miPelicula.getCantidad();
            estado = miPelicula.getEstado();
            mensaje = "Película Consultada";
        }
        misDatos.cerrarConexion();
       
        }
        
        if (limpiar){
            nombrePelicula = "";
            calidad = "";
            genero = "";
            director = "";
            anio = "";
            subtitulos = "";
            audio = "";
            pais  = "";
            cantidad = "";
            estado = "";
            mensaje = "";
        }
        
        if(insertar){
            if(nombrePelicula == ""){
                mensaje = "Debes Ingresar el Nombre de la Película";
            }else if (calidad == "") {
                mensaje = "Debes Seleccionar una Calidad ";
            }else if (genero == "") {
                mensaje = "Debes Seleccionar el Género";
            }else if (director == "") {
                mensaje = "Debes Ingresar el Nombre del Director";
            }else if (anio == "") {
                mensaje = "Debes Ingresar el Año";
            }else if (subtitulos == "") {
                mensaje = "Debes Seleccionar los Subtitulos";
            }else if (audio == "") {
                mensaje = "Debes Seleccionar el Audio";
            }else if (pais == "") {
                mensaje = "Debes digitar el País";
            }else if (cantidad == "") {
                mensaje = "Debes Seleccionar la Cantidad";
            }else if (estado == "") {
                mensaje = "Debes Seleccionar un Estado";
            }else {
                Datos misDatos = new Datos();
                Pelicula miPelicula = misDatos.getPelicula(nombrePelicula);
                
                if (miPelicula != null) {
                    mensaje = "La Película ya existe";
                }else {
                    miPelicula = new Pelicula(nombrePelicula, calidad, genero, director, anio, subtitulos, audio, pais, cantidad, estado);
                    misDatos.newPelicula(miPelicula);
                    mensaje = "Película Creada Exitosamente";
                }
                
                misDatos.cerrarConexion();
            }
        }
        
        
        if(modificar){
            if(nombrePelicula == ""){
                mensaje = "Debes Ingresar el Nombre de la Película";
            }else if (calidad == "") {
                mensaje = "Debes Seleccionar una Calidad ";
            }else if (genero == "") {
                mensaje = "Debes Seleccionar el Género";
            }else if (director == "") {
                mensaje = "Debes Ingresar el Nombre del Director";
            }else if (anio == "") {
                mensaje = "Debes Ingresar el Año";
            }else if (subtitulos == "") {
                mensaje = "Debes Seleccionar los Subtitulos";
            }else if (audio == "") {
                mensaje = "Debes Seleccionar el Audio";
            }else if (pais == "") {
                mensaje = "Debes digitar el País";
            }else if (cantidad == "") {
                mensaje = "Debes Seleccionar la Cantidad";
            }else if (estado == "") {
                mensaje = "Debes Seleccionar un Estado";
            
            }else {
                Datos misDatos = new Datos();
                Pelicula miPelicula = misDatos.getPelicula(nombrePelicula);
                
                if (miPelicula == null) {
                    mensaje = "La Película no Existe";
                }else {
                    miPelicula = new Pelicula(nombrePelicula, calidad, genero, director, anio, subtitulos, audio, pais, cantidad, estado) ;
                    misDatos.updatePelicula(miPelicula);
                    mensaje = "Película Modificada Exitosamente";
                }
                
                misDatos.cerrarConexion();
            }
        }
        
        if (eliminar){
            if(nombrePelicula == null){
                mensaje = "Debes Digitar una Pelicula para la Consulta";
            }
        Datos misDatos = new Datos();
        Pelicula miPelicula = misDatos.getPelicula(nombrePelicula);
        
        if(miPelicula == null){
           mensaje = "Pelicula no Existe";
        }else {
            misDatos.deletePelicula(nombrePelicula);
            nombrePelicula = "";
            calidad = "";
            genero = "";
            director = "";
            anio = "";
            subtitulos = "";
            audio = "";
            pais  = "";
            cantidad = "";
            estado = "";
            mensaje = "Pelicula Eliminada";
        }
        misDatos.cerrarConexion();
       
        }
        
        if(listar){
            %>
            <jsp:forward page="ListarPeliculas.jsp"></jsp:forward>
        <%
            }
        %>  
        
        
        <div id="vacio">
            <header>

                <%-- <img src="SBP.png" aling="top" width="185" height="115"  /> --%>

                <nav>

                    <ul>

                        <li><a href='#'><span class="primero"><center><img id="icono" src="Imagenes/0032-book.png"/></center></span>Gestión</a>
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
                                <li><a href='#'><span>Ayuda acerca de...</span></a></li>
                                <li><a href='MenuAdministrador.jsp'>Menú Principal</a></li>
                            </ul> 
                        </li>

                        <li ><a href='index.jsp'><span class="sexto"><center><img id="icono" src="Imagenes/salir.png"/></center></i></span>Salir</a>
                        </li> 
                    </ul>  
                </nav>

            </header>
            <%--  <div id="particles-js">  --%>
        </div>

        <form name="peliculas" action="peliculas.jsp" method="POST">
            <center> <table border="1"  height="300" > 
                    <center><h1>Películas</h1></center>
                    <br>
                    <br>
                    <tbody>
                        <tr>
                            <td>*Nombre de la Película:</td>
                            <td> <input type="text" name="nombrePelicula" id="nombrePelicula" value="<%=nombrePelicula%>" title="Nombre de Película" maxlength="100"  placeholder="Dijita el Nombre de la Película" /></td>
                        

                        
                            <td>*Calidad:</td>
                            <td> <select name="calidad" id="calidad" title="Selecciona la Calidad" placeholder="Selecciona la Calidad de la Película" >
                                    <option value="Full HD 1080P"<%= (calidad.equals("Full HD 1080P") ? "selected": "")%>>Full HD 1080P</option>
                                    <option value="HD 720P"<%= (calidad.equals("HD 720P") ? "selected": "")%>>HD 720P</option>
                                    <option value="SD Standart Definition"<%= (calidad.equals("SD Standart Definition") ? "selected": "")%>>SD Standart Definition</option>
                                    <option value="Blu-Ray"<%= (calidad.equals("Blu-Ray") ? "selected": "")%>>Blu-Ray</option>
                                    <option value="3D"<%= (calidad.equals("3D") ? "selected": "")%>>3D</option>
                                </select></td>
                        </tr>

                        <tr>
                            <td>*Género:</td>
                            <td> <select name="genero" id="calidad" title="Selecciona la Calidad" placeholder="Selecciona la Calidad de la Película" >
                                    <option value="Accion"<%= (genero.equals("Accion") ? "selected": "")%>>Accion</option>
                                    <option value="Comedia"<%= (genero.equals("Comedia") ? "selected": "")%>>Comedia</option>
                                </select></td>
                        
                            <td>*Director:</td>
                            <td> <input type="text" name="director" id="director" value="<%=director%>" title="Dijita el Nombre del Director"  maxlength="40"  placeholder="Dijita el Nombre del Director" /></td>
                        </tr>

                        <tr>
                            <td>*Año:</td>
                            <td> <input type="text" name="anio" id="anio" value="<%=anio%>" title="Dijita el Año"  pattern="(?=.*[0-9]).{4,}" maxlength="4"  placeholder="Dijita el Año" /></td>
                        
                            <td>*Subtítulos:</td>
                            <td> <select name="subtitulos" id="subtitulos" title="Selecciona los subtitulos" placeholder="Selecciona los Subtitulos" >
                                    <option value= "Ingles" <%= (subtitulos.equals("Ingles") ? "selected": "")%>>Ingles</option>
                                    <option value="Español" <%= (subtitulos.equals("Español") ? "selected": "")%> > Español </option>
                                    <option value="Latino" <%= (subtitulos.equals("Latino") ? "selected": "")%> > Latino </option>
                                </select></td>
                        </tr>

                        <tr>
                           
                            <td>*Audio:</td>
                            <td> <select name="audio" id="audio" title="Selecciona el Audio" placeholder="Selecciona el Audio" >
                                    <option value= "Ingles" <%= (audio.equals("Ingles") ? "selected": "")%>>Ingles</option>
                                    <option value="Español" <%= (audio.equals("Español") ? "selected": "")%> > Español </option>
                                    <option value="Latino" <%= (audio.equals("Latino") ? "selected": "")%> > Latino </option>
                                </select></td>
                                
                            <td>*País:</td>
                            <td> <input type="text" name="pais" id="pais" value="<%=pais%>" title="Dijita el País" maxlength="40"  placeholder="Dijita el País" /></td>
                        </tr>
                        
                        
                        <tr>
                         
                            <td>*Cantidad:</td>
                            <td><input type="text" name="cantidad" id="cantidad" value="<%=cantidad%>" title="Dijita la Cantidad de Películas en Existencia de esta Película" maxlength="3"  placeholder="Dijita la Cantidad de Películas" /></td>
                        
                            <td>*Estado:</td>
                            <td> <select name="estado" id="estado" title="Selecciona el Estado en el que se encuentra la Película" placeholder="Selecciona el Estado" >
                                    <option value= "Libre" <%= (estado.equals("Libre") ? "selected": "")%>> Libre </option>
                                    <option value="En Uso" <%= (estado.equals("En Uso") ? "selected": "")%> > En Uso </option>
                                </select></td>
                        </tr>
                         <tr>

                    <td colspan="4">
                        <center>
                            <input id="boton" type="submit" name="insertar" value="Insertar">
                            <input id="boton" type="submit" name="consultar" value="Consultar">
                            <input id="boton" type="submit" name="modificar" value="Modificar">
                            <input id="boton" type="submit" name="eliminar" value="Eliminar">
                            <input id="boton" type="submit" name="limpiar" value="Limpiar">
                            <input id="boton" type="submit" name="listar" value="Listar">
                        </center>
                    </td>   

                    </tr> 

                    </tbody>
                </table>
            </center>
        </form>
    <center><h1><%=mensaje%></h1></center>
    </body>
</html>