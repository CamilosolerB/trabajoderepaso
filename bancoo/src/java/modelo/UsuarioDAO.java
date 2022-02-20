/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import controlador.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


/**
 *
 * @author SENA
 */
public class UsuarioDAO {
    Conexion con = new Conexion();
    Connection cnn = con.conexionsql();
    PreparedStatement ps;
    
    public boolean insertarusuario(Usuario us){
        int x=0;
        boolean res=false;
        try {
            ps=cnn.prepareStatement("Insert into usuario VALUES (?,?,?,?,?,?)");
            ps.setString(1, us.getDocumento());
            ps.setString(2, us.getUsuario());
            ps.setString(3, us.getClave());
            ps.setString(4, us.getRol());
            ps.setString(5, us.getEstado());
            ps.setString(6, us.getImagen());
            if(ps.executeUpdate()>x){
                res= true;
            }

            } 
        catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "sucedio el error "+ex);
        }
        return res;
    }
}
