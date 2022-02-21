/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Clientes;
import modelo.ClientesDAO;

/**
 *
 * @author PC
 */
@WebServlet(name = "Servletcliente", urlPatterns = {"/Servletcliente"})
public class Servletcliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/aaaa");
            String documento, nombre, apellido, correo, numero, sexo, fecnac;
            if(request.getParameter("subir")!=null){
                documento=request.getParameter("documento");
                nombre=request.getParameter("nombre");
                apellido=request.getParameter("apellido");
                correo=request.getParameter("correo");
                numero=request.getParameter("numero");
                sexo=request.getParameter("sexo");
                fecnac=request.getParameter("fecnac");
                Clientes clien = new Clientes(documento, nombre, apellido, correo, numero, sexo, fecnac);
                ClientesDAO cdao = new ClientesDAO();
                boolean comparador = cdao.insertartcliente(clien);
                if (comparador) {
                    JOptionPane.showMessageDialog(null, "Cliente insertado correctamente");
                }
                else{
                    JOptionPane.showMessageDialog(null, "Error en la insercion");
                }
            }
            if(request.getParameter("update")!=null){
                documento=request.getParameter("adoc");
                nombre=request.getParameter("anom");
                apellido=request.getParameter("aape");
                correo=request.getParameter("aema");
                numero=request.getParameter("anum");
                sexo=request.getParameter("sexo");
                fecnac=request.getParameter("fecnac");
                Clientes cl = new Clientes(documento, nombre, apellido, correo, numero, sexo, fecnac);
                ClientesDAO cla = new ClientesDAO();
                boolean result = cla.actualizarcliente(cl);
                if (result) {
                    JOptionPane.showMessageDialog(null, "Actualizacion completa");
                }
                else{
                    JOptionPane.showMessageDialog(null, "No se ha podido actualizar");
                }
            }
            if(request.getParameter("delete")!=null){
                documento=request.getParameter("adoc");
                Clientes cl = new Clientes(documento);
                ClientesDAO cla = new ClientesDAO();
                boolean result = cla.deletecliente(cl);
                if (result) {
                    JOptionPane.showMessageDialog(null, "Eliminado satisfactoriamente");
                }
                else{
                    JOptionPane.showMessageDialog(null, "Error en la eliminacion");
                }
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
