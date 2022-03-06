/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author SENA
 */
public class Login {
    private String usuario;
    private String password;
    private String rol;
    private String foto;
    private String nombre;
    private String apellido;

    public Login(String usuario, String password, String rol, String foto,String nombre, String apellido) {
        this.usuario = usuario;
        this.password = password;
        this.rol = rol;
        this.foto = foto;
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public Login() {
    }
    
    
    
    public Login(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
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


    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    
}
