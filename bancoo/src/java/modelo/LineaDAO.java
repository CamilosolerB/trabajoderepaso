/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import controlador.Conexion;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author PC
 */
public class LineaDAO {
    
    Conexion con = new Conexion();
    Connection mysql = con.conexionsql();
    PreparedStatement ps;
    
    public boolean insertarlinea(Linea lin){
        boolean valor=false;
            try {
                ps=mysql.prepareStatement("Insert into lineas VALUES (?,?,?,?)");
                ps.setString(1, lin.getCodigo());
                ps.setString(2, lin.getNumero());
                ps.setString(3, lin.getMonto());
                ps.setInt(4, lin.getPlazo());
                
                if (ps.executeUpdate()>0) {
                    valor=true;
                }
            } 
            catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        return valor;
    }
    
}
