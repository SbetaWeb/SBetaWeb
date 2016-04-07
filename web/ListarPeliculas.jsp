<%-- 
    Document   : ListarUsuarios
    Created on : 08-mar-2016, 9:58:52
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.DatosPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Listado de Peliculas</title>
        <link rel="icon" type="image/png" href="Imagenes/favicon.png" />
        <link rel="stylesheet" href="Estilos/estilo1.css" >
        <link rel="stylesheet" href="Estilos/fonts.css" type="text/css">
        <link rel="stylesheet" href="Estilos/demo.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/slide.css"  type="text/css" />
        <link rel="stylesheet" href="Estilos/estiloListar.css"  type="text/css" />
        <script src="JavaScript/nobackbutton.js"></script> 
    </head>
    <body onload="">
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
            <%--  <div id="particles-js">  --%>
        </div>
        
        <center><h1>Listado de Peliculas</h1></center>
        <br>
        <br>
        <center><table border="2">
            <thead>
                <tr>
                    <th>Nombre Pelicula</th>
                    <th>Calidad</th>
                    <th>Género</th>
                    <th>Director</th>
                    <th>Año</th>
                    <th>Subtitulos</th>
                    <th>Audio</th>
                    <th>País</th>
                    <th>Cantidad</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <%
                DatosPelicula misDatosPelicula = new DatosPelicula();
                ResultSet rs = misDatosPelicula.getPeliculas();
                while (rs.next()){       
                %>
                <tr>
                    <td><%= rs.getString("nombrePelicula") %> </td>
                    <td><%= rs.getString("calidad") %></td>
                    <td><%= rs.getString("genero") %></td>
                    <td><%= rs.getString("director") %></td>
                    <td><%= rs.getString("anio") %></td>
                    <td><%= rs.getString("subtitulos") %></td>
                    <td><%= rs.getString("audio") %></td>
                    <td><%= rs.getString("pais") %></td>
                    <td><%= rs.getString("cantidad") %></td>
                    <td><%= rs.getString("estado") %></td>
                </tr>
                <% 
                }
                misDatosPelicula.cerrarConexion();
                %>
            </tbody>
        </table>
        </center>
        <br>
        <h3> <a href="javascript:history.back(1)">Regresar a la Página Anterior</a> </h3>
        <br>
        
    </body>
</html>
