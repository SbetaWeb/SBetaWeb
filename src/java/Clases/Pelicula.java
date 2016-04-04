package Clases;

/**
 *
 * @author hp
 */
public class Pelicula {
    
    private String nombrePelicula;
    private String calidad;
    private String genero;
    private String director;
    private String anio;
    private String subtitulos;
    private String audio;
    private String pais;
    private String cantidad;
    private String estado;

    public Pelicula(String nombrePelicula, String calidad, String genero, String director, String anio, String subtitulos, String audio, String pais, String cantidad, String estado) {
        this.nombrePelicula = nombrePelicula;
        this.calidad = calidad;
        this.genero = genero;
        this.director = director;
        this.anio = anio;
        this.subtitulos = subtitulos;
        this.audio = audio;
        this.pais = pais;
        this.cantidad = cantidad;
        this.estado = estado;
    }

    public String getNombrePelicula() {
        return nombrePelicula;
    }

    public void setNombrePelicula(String nombrePelicula) {
        this.nombrePelicula = nombrePelicula;
    }

    public String getCalidad() {
        return calidad;
    }

    public void setCalidad(String calidad) {
        this.calidad = calidad;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getSubtitulos() {
        return subtitulos;
    }

    public void setSubtitulos(String subtitulos) {
        this.subtitulos = subtitulos;
    }

    public String getAudio() {
        return audio;
    }

    public void setAudio(String audio) {
        this.audio = audio;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}