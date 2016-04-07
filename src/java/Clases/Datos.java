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
public class Datos {
    private Connection con;
    
    public Datos(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String db = ("jdbc:mysql://localhost/sbetaweb");
            con = DriverManager.getConnection(db, "root", "");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cerrarConexion(){
        
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
            
    
    public String validarUsuario (String usuario, String clave) {
        try {
            String sql = "select perfil from tblusuario where usuario='" +usuario+ "'and clave ='"+clave+"'";
        
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                return rs.getString("perfil");
            } else {
                return ("No oka");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
            return ("No oka");
        }
    }
    
    public Usuario getUsuario(String usuario){
        try {
            Usuario miUsuario = null;
            String sql = "select * from tblusuario where usuario='" +usuario+ "'";
            
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            if(rs.next()){
                miUsuario = new Usuario(
                        rs.getString("usuario"),
                        rs.getString("cedula"), 
                        rs.getString("nombre"), 
                        rs.getString("apellido"), 
                        rs.getString("celular"), 
                        rs.getString("email"), 
                        rs.getString("estado"), 
                        rs.getString("perfil"), 
                        rs.getString("clave"), 
                        rs.getString("repetirclave"));
            
            }
            
            return miUsuario;
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
       
    public void newUsuario (Usuario miUsuario) {
        try {
            String sql = "insert into tblusuario values ('"+miUsuario.getUsuario()+"', '"+miUsuario.getCedula()+"', '"+miUsuario.getNombre()+"', '"+miUsuario.getApellido()+"', '"+miUsuario.getCelular()+"', '"+miUsuario.getEmail()+"', '"+miUsuario.getEstado()+"', '"+miUsuario.getPerfil()+"', '"+miUsuario.getClave()+"', '"+miUsuario.getRepetirclave()+"') ";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       
    public void updateUsuario (Usuario miUsuario) {
        try {
            String sql = "update tblusuario set cedula = '"+miUsuario.getCedula()+"', nombre = '"+miUsuario.getNombre()+"', apellido = '"+miUsuario.getApellido()+"', celular = '"+miUsuario.getCelular()+"', email = '"+miUsuario.getEmail()+"', estado = '"+miUsuario.getEstado()+"', perfil = '"+miUsuario.getPerfil()+"', clave = '"+miUsuario.getClave()+"', repetirclave = '"+miUsuario.getRepetirclave()+"' where usuario = '"+miUsuario.getUsuario()+"'";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
        
    public void deleteUsuario(String usuario){
        try {
            
            String sql = "delete from tblusuario where usuario='" +usuario+ "'";
            
            Statement st = con.createStatement();
            st.executeUpdate(sql);
           
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
          
        }
    }
    
        
    public ResultSet getUsuarios(){
        try {
            Usuario miUsuario = null;
            String sql = "select * from tblusuario";
            
            Statement st = con.createStatement();
            return st.executeQuery(sql);
           
        } catch (SQLException ex) {
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    }
