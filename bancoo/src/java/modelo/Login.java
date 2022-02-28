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
    private String documento;
    private String usuario;
    private String password;
    private String rol;

    public Login(String documento, String usuario, String password, String rol) {
        this.documento = documento;
        this.usuario = usuario;
        this.password = password;
        this.rol = rol;
    }

    public Login() {
    }
    
    
    
    public Login(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
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
