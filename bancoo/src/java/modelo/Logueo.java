/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import controlador.Conexion;
import java.sql.*;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import controlador.Servletlogin;
/**
 *
 * @author SENA
 */
public class Logueo {
    Conexion con = new Conexion();
    Connection mysql = con.conexionsql();
    PreparedStatement ps;
    ResultSet rs;
    HttpSession respueta;
    Login logg;
    
    public Login validarusuario(Login log){
            try {
                ps=mysql.prepareStatement("Select documento ,nombre, clave, rol From usuario Where nombre=? AND clave=?");
                ps.setString(1, log.getUsuario());
                ps.setString(2, log.getPassword());
                rs=ps.executeQuery();
                while(rs.next()){
                    logg = new Login( rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                }
            }   
            
            catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        return logg;
    }
}
