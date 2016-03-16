<%@page import="Clases.Datos"%>
<%@page import="Clases.Usuario"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Formulario De Usuarios</title>
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" href="Estilos/estilo1.css" >
        <link rel="stylesheet" href="Estilos/fonts.css" type="text/css">
        <link rel="stylesheet" href="Estilos/demo.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/slide.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/jsp.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/estilos_2.css"  type="text/css" />
        <script src="JavaScript/nobackbutton.js"></script> 
        <script src="JavaScript/soloNumeros.js"></script> 

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
        
        String usuario = "";
        String cedula = "";
        String nombre = "";
        String apellido = "";
        String celular = "";
        String email = "";
        String estado = "";
        String perfil = "";
        String clave = "";
        String repetirclave = "";
        
        if(request.getParameter("usuario") != null) usuario = request.getParameter("usuario");
        if(request.getParameter("cedula") != null) cedula = request.getParameter("cedula");
        if(request.getParameter("nombre") != null) nombre = request.getParameter("nombre");
        if(request.getParameter("apellido") != null) apellido = request.getParameter("apellido");
        if(request.getParameter("celular") != null) celular = request.getParameter("celular");
        if(request.getParameter("email") != null) email = request.getParameter("email");
        if(request.getParameter("estado") != null) estado = request.getParameter("estado");
        if(request.getParameter("perfil") != null) perfil = request.getParameter("perfil");
        if(request.getParameter("clave") != null) clave = request.getParameter("clave");
        if(request.getParameter("repetirclave") != null) repetirclave = request.getParameter("repetirclave");
        
        if (consultar){
            if(usuario == null){
                mensaje = "Debes Digitar un Usuario para la Consulta";
            }
        Datos misDatos = new Datos();
        Usuario miUsuario = misDatos.getUsuario(usuario);
        
        if(miUsuario == null){
           mensaje = "Usuario no existe";
        }else {
            usuario = miUsuario.getUsuario();
            cedula = miUsuario.getCedula();
            nombre = miUsuario.getNombre();
            apellido = miUsuario.getApellido();
            celular = miUsuario.getCelular();
            email = miUsuario.getEmail();
            estado = miUsuario.getEstado();
            perfil  = miUsuario.getPerfil();
            clave = miUsuario.getClave();
            repetirclave = miUsuario.getRepetirclave();
            mensaje = "Usuario Consultado";
        }
        misDatos.cerrarConexion();
       
        }
        
        if (limpiar){
            usuario = "";
            cedula = "";
            nombre = "";
            apellido = "";
            celular = "";
            email = "";
            estado = "";
            perfil  = "";
            clave = "";
            repetirclave = "";
            mensaje = "";
        }
        
        if(insertar){
            if(usuario == ""){
                mensaje = "Debes Ingresar un Nombre de Usuario";
            }else if (cedula == "") {
                mensaje = "Debes Ingresar una Cédula";
            }else if (nombre == "") {
                mensaje = "Debes Ingresar un Nombre";
            }else if (apellido == "") {
                mensaje = "Debes Ingresar un Apellido";
            }else if (celular == "") {
                mensaje = "Debes Ingresar un Número Celular";
            }else if (email == "") {
                mensaje = "Debes Ingresar tu Dirección de Correo Electrónico";
            }else if (estado == "") {
                mensaje = "Debes Seleccionar un Estado";
            }else if (perfil == "") {
                mensaje = "Debes Seleccionar un Perfil";
            }else if (clave == "") {
                mensaje = "Debes Ingresar una Contraseña";
            }else if (repetirclave == "") {
                mensaje = "Vuelve a Ingresar la Contraseña";
            }else if (!clave.equals(repetirclave)){
                mensaje = "Ambas contraseñas deben ser iguales";
            }else if (usuario.equals(clave)) {
                mensaje = "¡La Contraseña no puede ser igual al Usuario!";
            
            }else {
                Datos misDatos = new Datos();
                Usuario miUsuario = misDatos.getUsuario(usuario);
                
                if (miUsuario != null) {
                    mensaje = "El Usuario ya existe";
                }else {
                    miUsuario = new Usuario(usuario, cedula, nombre, apellido, celular, email, estado, perfil, clave, repetirclave);
                    misDatos.newUsuario(miUsuario);
                    mensaje = "Usuario Creado Exitosamente";
                }
                
                misDatos.cerrarConexion();
            }
        }
        
        
        if(modificar){
            if(usuario == ""){
                mensaje = "Debes Ingresar un Nombre de Usuario";
            }else if (cedula == "") {
                mensaje = "Debes Ingresar una Cédula";
            }else if (nombre == "") {
                mensaje = "Debes Ingresar un Nombre";
            }else if (apellido == "") {
                mensaje = "Debes Ingresar un Apellido";
            }else if (celular == "") {
                mensaje = "Debes Ingresar un Número Celular";
            }else if (email == "") {
                mensaje = "Debes Ingresar tu Dirección de Correo Electrónico";
            }else if (estado == "") {
                mensaje = "Debes Seleccionar un Estado";
            }else if (perfil == "") {
                mensaje = "Debes Seleccionar un Perfil";
            }else if (clave == "") {
                mensaje = "Debes Ingresar una Contraseña";
            }else if (repetirclave == "") {
                mensaje = "Vuelve a Ingresar la Contraseña";
            }else if (!clave.equals(repetirclave)){
                mensaje = "Ambas contraseñas deben ser iguales";
            }else if (usuario.equals(clave)) {
                mensaje = "¡La Contraseña no puede ser igual al Usuario!";
            }else {
                Datos misDatos = new Datos();
                Usuario miUsuario = misDatos.getUsuario(usuario);
                
                if (miUsuario == null) {
                    mensaje = "El Usuario no existe";
                }else {
                    miUsuario = new Usuario(usuario, cedula, nombre, apellido, celular, email, estado, perfil, clave, repetirclave);
                    misDatos.updateUsuario(miUsuario);
                    mensaje = "Usuario Modificado Exitosamente";
                }
                
                misDatos.cerrarConexion();
            }
        }
        
        if (eliminar){
            if(usuario == null){
                mensaje = "Debes Digitar un Usuario para la Consulta";
            }
        Datos misDatos = new Datos();
        Usuario miUsuario = misDatos.getUsuario(usuario);
        
        if(miUsuario == null){
           mensaje = "Usuario no existe";
        }else {
            misDatos.deleteUsuario(usuario);
            usuario = "";
            cedula = "";
            nombre = "";
            apellido = "";
            celular = "";
            email = "";
            estado = "";
            perfil  = "";
            clave = "";
            repetirclave = "";
            mensaje = "Usuario Eliminado";
        }
        misDatos.cerrarConexion();
       
        }
        
        if(listar){
            %>
            <jsp:forward page="ListarUsuarios.jsp"></jsp:forward>
        <%
            }
        %>
        
        <script>
            var numeros = "0123456789";
            var letras = "abcdefghyjklmnñopqrstuvwxyz";
            var letras_mayusculas = "ABCDEFGHYJKLMNÑOPQRSTUVWXYZ";

            function tiene_numeros(texto) {
                for (i = 0; i < texto.length; i++) {
                    if (numeros.indexOf(texto.charAt(i), 0) != -1) {
                        return 1;
                    }
                }
                return 0;
            }

            function tiene_letras(texto) {
                texto = texto.toLowerCase();
                for (i = 0; i < texto.length; i++) {
                    if (letras.indexOf(texto.charAt(i), 0) != -1) {
                        return 1;
                    }
                }
                return 0;
            }

            function tiene_minusculas(texto) {
                for (i = 0; i < texto.length; i++) {
                    if (letras.indexOf(texto.charAt(i), 0) != -1) {
                        return 1;
                    }
                }
                return 0;
            }

            function tiene_mayusculas(texto) {
                for (i = 0; i < texto.length; i++) {
                    if (letras_mayusculas.indexOf(texto.charAt(i), 0) != -1) {
                        return 1;
                    }
                }
                return 0;
            }

            function seguridad_clave(clave) {
                var seguridad = 0;
                if (clave.length != 0) {
                    if (tiene_numeros(clave) && tiene_letras(clave)) {
                        seguridad += 30;
                    }
                    if (tiene_minusculas(clave) && tiene_mayusculas(clave)) {
                        seguridad += 30;
                    }
                    if (clave.length >= 4 && clave.length <= 5) {
                        seguridad += 10;
                    } else {
                        if (clave.length >= 6 && clave.length <= 8) {
                            seguridad += 30;
                        } else {
                            if (clave.length > 8) {
                                seguridad += 39;
                            }
                        }
                    }
                }
                return seguridad
            }

            function muestra_seguridad_clave(clave, formulario) {
                seguridad = seguridad_clave(clave);
                formulario.seguridad.value = seguridad + "%";
            }
        </script>
        
        
        
        <div id="vacio">
            <header>

                <%-- <img src="SBP.png" aling="top" width="185" height="115"  /> --%>

                <nav>

                    <ul>

                        <li><a href='#'><span class="primero"><center><img id="icono" src="Imagenes/0032-book.png"/></center></span>Productos</a>
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

        <form name="usuarios" action="usuarios.jsp" method="POST">
            <center> <table border="1"  height="300" > 
                    <center><h1>Usuarios</h1></center>
                    <br>
                    <br>
                    <tbody>
                        <tr>
                            <td>*Nombre de Usuario:</td>
                            <td> <input type="text" name="usuario" id="usuario" value="<%=usuario%>" title="Usuario,almenos 8 caracteres, minúsculas y mayúsculas " pattern="(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="20"  placeholder=" Dijita tu Usuario" /></td>
                        

                        
                            <td>*Cédula:</td>
                            <td> <input type="text" name="cedula" id="cedula" value="<%=cedula%>" title="Dijita tu Cédula, mínimo 8 caracteres" pattern="(?=.*[0-9]).{8,}" maxlength="20"  placeholder=" Dijita tu Cédula" onkeypress="return soloNumeros(event);"/></td>
                        </tr>

                        <tr>
                            <td>*Nombre:</td>
                            <td> <input type="text" name="nombre" id="nombre" value="<%=nombre%>" title="Dijita tu nombre"  maxlength="40"  placeholder="Dijita tu nombre" /></td>
                        
                            <td>*Apellido:</td>
                            <td> <input type="text" name="apellido" id="apellido" value="<%=apellido%>" title="Dijita tu apellido"  maxlength="40"  placeholder=" Dijita tu apellido" /></td>
                        </tr>

                        <tr>
                            <td>*Celular:</td>
                            <td> <input type="text" name="celular" id="celular" value="<%=celular%>" title="Dijita tu Celular, mínimo 10 caracteres" pattern="(?=.*[0-9]).{10,}" maxlength="20"  placeholder=" Dijita tu Celular" /></td>
                        
                            <td>*Correo Electrónico:</td>
                            <td> <input type="text" name="email" id="email" pattern="^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$" value="<%=email%>" title="mail@example.com" maxlength="60"  placeholder=" Dijita tu Dirección de Correo Electrónico" /></td>
                        </tr>

                        <tr>
                            <td>*Estado:</td>
                            <td> <select name="estado" id="estado" title="Selecciona uno de los Estados" placeholder="Selecciona uno de los Estados" >
                                    <option value="activo"<%= (estado.equals("activo") ? "selected": "")%>> Activo </option>
                                    <option value="inactivo"<%= (estado.equals("inactivo") ? "selected": "")%>> Inactivo </option>
                                </select></td>
                        
                            <td>*Perfil:</td>
                            <td> <select name="perfil" id="perfil" title="Selecciona uno de los perfiles" placeholder="Selecciona uno de los perfiles" >
                                    <option value= "administrador" <%= (perfil.equals("administrador") ? "selected": "")%>> Administrador </option>
                                    <option value="cliente" <%= (perfil.equals("cliente") ? "selected": "")%> > Cliente </option>
                                </select></td>
                        </tr>

                        <tr>
                            <td>*Contraseña:</td>
                            <td> <input type="password" name="clave" id="clave" value="<%=clave%>" title="Clave, almenos 8 Caracteres, Minúsculas, Mayúsculas y Números" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}" maxlength="40"  placeholder=" Dijita tu Clave" onkeyup="muestra_seguridad_clave(this.value, this.form)"/></td>
                        
                            <td>*Repetir Contraseña:</td>
                            <td> <input type="password" name="repetirclave" id="repetirclave" value="<%=repetirclave%>" title="Clave, Vuelve a Digitar tu Clave" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}" maxlength="40"  placeholder=" Vuelve a Digitar tu Clave" /></td>
                        </tr>
                        
                        <tr>
                            <td>Seguridad Contraseña:</td> 
                            <td><input type="text"  name="seguridad" style="border: 0px;  background-color:transparent; "onfocus="blur()"></td>
                            <td></td>
                            <td></td>
                            
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
        <br>
    <center><h1><%=mensaje%></h1></center>
    </body>
</html>