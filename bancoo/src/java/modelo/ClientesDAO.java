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
public class ClientesDAO {
    Conexion con = new Conexion();
    Connection mysql = con.conexionsql();
    PreparedStatement ps;
    
    public boolean insertartcliente(Clientes cli){
        boolean valor=false;
            try {
                ps=mysql.prepareStatement("Insert into cliente VALUES (?,?,?,?,?,?,?)");
                ps.setString(1, cli.getDocumento());
                ps.setString(2, cli.getNombre());
                ps.setString(3, cli.getApellido());
                ps.setString(4, cli.getCorreo());
                ps.setString(5, cli.getNumero());
                ps.setString(6, cli.getSexo());
                ps.setString(7, cli.getFecnac());
                if(ps.executeUpdate()>0){
                    valor=true;
                }
            } 
            catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        return  valor;
    }
}
