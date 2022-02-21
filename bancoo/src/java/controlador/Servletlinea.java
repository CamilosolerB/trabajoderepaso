/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Linea;
import modelo.LineaDAO;

/**
 *
 * @author PC
 */
@WebServlet(name = "Servletlinea", urlPatterns = {"/Servletlinea"})
public class Servletlinea extends HttpServlet {

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
                String codigo,numero,monto;
                int plazo;
                if(request.getParameter("subir")!=null){
                    codigo=request.getParameter("codigo");
                    numero=request.getParameter("numero");
                    monto=request.getParameter("monto");
                    plazo=Integer.parseInt(request.getParameter("plazo"));
                    Linea lin = new Linea(codigo, numero, monto, plazo);
                    LineaDAO linean = new LineaDAO();
                    boolean resultado = linean.insertarlinea(lin);
                    if (resultado) {
                        JOptionPane.showMessageDialog(null, "linea añadida con exito");
                    }
                    else{
                        JOptionPane.showMessageDialog(null, "Ocurrio un error vuelva a intentarlo");
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
