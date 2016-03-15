
package Clases;

public class Usuario {
    
    private String usuario;
    private String cedula;
    private String nombre;
    private String apellido;
    private String celular;
    private String email;
    private String estado;
    private String perfil;
    private String clave;
    private String repetirclave;

    public Usuario(String usuario, String cedula, String nombre, String apellido, String celular, String email, String estado, String perfil, String clave, String repetirclave) {
        this.usuario = usuario;
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.celular = celular;
        this.email = email;
        this.estado = estado;
        this.perfil = perfil;
        this.clave = clave;
        this.repetirclave = repetirclave;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getRepetirclave() {
        return repetirclave;
    }

    public void setRepetirclave(String repetirclave) {
        this.repetirclave = repetirclave;
    }
    
    
    
}
