/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Usuario;
import modelo.UsuarioDAO;

/**
 *
 * @author SENA
 */
@WebServlet(name = "Servletusuario", urlPatterns = {"/Servletusuario"})
public class Servletusuario extends HttpServlet {

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
        //PrintWriter out = response.getWriter();
        String  d,u,c,r,e,i;
        if(request.getParameter("subir")!=null){
            //Connection cnn;
            //Conexion con = new Conexion();
            //con.conexionsql();
            d=request.getParameter("documento");
            u=request.getParameter("nombre");
            c=request.getParameter("clave");
            r=request.getParameter("rol");
            e=request.getParameter("estado");
            i=request.getParameter("imagen");
            Usuario us = new Usuario(d, u, c, r, e, i);
            UsuarioDAO udao = new UsuarioDAO();
            boolean y=udao.insertarusuario(us);
            if(y){
                JOptionPane.showMessageDialog(null, "usuario insertado");
            }
            else{
                JOptionPane.showMessageDialog(null, "error en la insercion");
            }
        }
        
        if(request.getParameter("update")!=null){
            d=request.getParameter("adoc");
            u=request.getParameter("ausu");
            c=request.getParameter("acla");
            r=request.getParameter("arol");
            e=request.getParameter("aest");
            i=request.getParameter("aimg");
            Usuario us = new Usuario(d, u, c, r, e, i);
            UsuarioDAO udao = new UsuarioDAO();
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
