/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


import controlador.Conexion;
import java.sql.*;
import java.util.ArrayList;

import javax.swing.JOptionPane;

/**
 *
 * @author PC
 */
public class CreditoDAO {
    
    Conexion con = new Conexion();
    Connection mysql = con.conexionsql();
    PreparedStatement ps;
    ResultSet rs;
    
    public ArrayList <String> Consultadocu(){
        ArrayList<String> listado = new ArrayList<>();
        try {
            ps=mysql.prepareStatement("Select documentoc From cliente");
            rs= ps.executeQuery();
            while(rs.next()){
                listado.add(rs.getString("documentoc"));
            }
        } 
        catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return listado;
    }
   
    public ArrayList <String> Consultacre(){
        ArrayList<String> listado = new ArrayList<>();
        try {
            ps=mysql.prepareStatement("Select codlinea From lineas");
            rs= ps.executeQuery();
            while(rs.next()){
                listado.add(rs.getString("codlinea"));
            }
        } 
        catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return listado;
    }
    
    public boolean insertarcreditos(Credito cre){
        boolean valor=false;
            try {
                ps=mysql.prepareStatement("Insert into creditos Values(?,?,?,?,?,?)");
                ps.setString(1, cre.getCodigo());
                ps.setString(2, cre.getDocumento());
                ps.setString(3, cre.getCodlinea());
                ps.setInt(4, cre.getMonto());
                ps.setString(5, cre.getFecha());
                ps.setInt(6, cre.getPlazo());
                if(ps.executeUpdate()>0){
                    valor=true;
                }
            } 
            catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        return valor;
    }
}