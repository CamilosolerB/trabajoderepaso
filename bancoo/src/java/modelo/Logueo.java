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
    
    public boolean validarusuario(String user, String password){
        boolean result=false;
            try {
                ps=mysql.prepareStatement("Select * from usuario Where nombre=? And clave=?");
                ps.setString(1, user);
                ps.setString(2, password);
                rs=ps.executeQuery();
                if(rs.next()){
                    result=true;
                }
            }   
            
            catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        return result;
    }
}
