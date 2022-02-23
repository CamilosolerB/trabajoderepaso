/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import controlador.Conexion;
import java.sql.*;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
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
    
    public boolean validarusuario(){
        
        boolean result=false;
            try {
                String user, password;
                user= String.valueOf(respueta.getAttribute("user"));
                password=String.valueOf(respueta.getAttribute("password"));
                JOptionPane.showMessageDialog(null, user);
                JOptionPane.showMessageDialog(null, password);
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
