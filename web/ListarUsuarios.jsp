<%-- 
    Document   : ListarUsuarios
    Created on : 08-mar-2016, 9:58:52
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Listado de Usuarios</title>
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" href="Estilos/estilo1.css" >
        <link rel="stylesheet" href="Estilos/fonts.css" type="text/css">
        <link rel="stylesheet" href="Estilos/demo.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/slide.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/jsp.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/estiloListar.css"  type="text/css" />
        <script src="JavaScript/nobackbutton.js"></script> 
    </head>
    <body onload="">
          <div id="vacio">
            <header>

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
        
        <center><h1>Listado de Usuarios</h1></center>
        <br>
        <br>
        <center><table border="2">
            <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Cédula</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Celular</th>
                    <th>Correo Electrónico</th>
                    <th>Estado</th>
                    <th>Perfil</th>
                </tr>
            </thead>
            <tbody>
                <%
                Datos misDatos = new Datos();
                ResultSet rs = misDatos.getUsuarios();
                while (rs.next()){       
                %>
                <tr>
                    <td><%= rs.getString("usuario") %> </td>
                    <td><%= rs.getString("cedula") %></td>
                    <td><%= rs.getString("nombre") %></td>
                    <td><%= rs.getString("apellido") %></td>
                    <td><%= rs.getString("celular") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("estado") %></td>
                    <td><%= rs.getString("perfil") %></td>
                </tr>
                <% 
                }
                misDatos.cerrarConexion();
                %>
            </tbody>
        </table>
        </center>
        <br>
        <h3> <a href="javascript:history.back(1)">Regresar a la Página Anterior</a> </h3>
        <br>
        
    </body>
</html>
