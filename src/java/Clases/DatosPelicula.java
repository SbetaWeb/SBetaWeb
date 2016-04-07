/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author hp
 */
public class DatosPelicula {
    private Connection con;
    
    public DatosPelicula(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String db = ("jdbc:mysql://localhost/sbetaweb");
            con = DriverManager.getConnection(db, "root", "");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cerrarConexion(){
        
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
            
        public Pelicula getPelicula (String nombrePelicula){
        try {
            Pelicula miPelicula = null;
            String sqlpelicula = "select * from tblpelicula where nombrePelicula='" +nombrePelicula+ "'";
            
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sqlpelicula);
            
            if(rs.next()){
                miPelicula = new Pelicula(
                        rs.getString("nombrePelicula"),
                        rs.getString("calidad"), 
                        rs.getString("genero"), 
                        rs.getString("director"), 
                        rs.getString("anio"), 
                        rs.getString("idioma"), 
                        rs.getString("audio"), 
                        rs.getString("pais"), 
                        rs.getString("cantidad"), 
                        rs.getString("estado"));
            
            }
            
            return miPelicula;
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
       
    public void newPelicula (Pelicula miPelicula) {
        try {
            String sql = "insert into tblpelicula values ('"+miPelicula.getNombrePelicula()+"', '"+miPelicula.getCalidad()+"', '"+miPelicula.getGenero()+"', '"+miPelicula.getDirector()+"', '"+miPelicula.getAnio()+"', '"+miPelicula.getSubtitulos()+"', '"+miPelicula.getAudio()+"', '"+miPelicula.getPais()+"', '"+miPelicula.getCantidad()+"', '"+miPelicula.getEstado()+"') ";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       
    public void updatePelicula (Pelicula miPelicula) {
        try {
            String sql = "update tblpelicula set calidad = '"+miPelicula.getCalidad()+"', genero = '"+miPelicula.getGenero()+"', director = '"+miPelicula.getDirector()+"', anio = '"+miPelicula.getAnio()+"', subtitulos = '"+miPelicula.getSubtitulos()+"', audio = '"+miPelicula.getAudio()+"', pais = '"+miPelicula.getPais()+"', cantidad = '"+miPelicula.getCantidad()+"', estado = '"+miPelicula.getEstado()+"' where nombrePelicula = '"+miPelicula.getNombrePelicula()+"'";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       
    public void deletePelicula(String nombrePelicula){
        try {
            
            String sql = "delete from tblpelicula where nombrePelicula='" +nombrePelicula+ "'";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
           
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
          
        }
    }
    
       
    public ResultSet getPeliculas(){
        try {
            Pelicula miPelicula = null;
            String sql = "select * from tblpelicula";
            
            Statement st = con.createStatement();
            return st.executeQuery(sql);
           
        } catch (SQLException ex) {
            Logger.getLogger(DatosPelicula.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
