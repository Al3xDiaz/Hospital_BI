/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.tbEspecialidades;
import ModeloDAO.tbEspecialidadesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lab 1
 */
@WebServlet(name = "EspecialidadesControlador", urlPatterns = {"/EspecialidadesControlador"})
public class EspecialidadesControlador extends HttpServlet { 
    tbEspecialidades tbEspecialidad = new tbEspecialidades();
    tbEspecialidadesDAO tbEspecialidadDAO = new tbEspecialidadesDAO();
    String listar="Views/Especialidades/Index_Especialidades.jsp";
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EspecialidadesControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EspecialidadesControlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
            //HttpSession sessiones= request.getSession();
            //sessiones.setAttribute("Consultas","style='display: block;'");            
        String acceso="";
        String accion=request.getParameter("Accion");
        if(accion.equalsIgnoreCase("Listar")){            
            acceso = listar;
        }else{
            acceso="index";
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
        //processRequest(request, response);        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String acceso="-1";
        String msj = "";       
        List<tbEspecialidades> list = null;
        if(request.getParameter("Accion").equalsIgnoreCase("Agregar"))
        {
            String descripcion =request.getParameter("Descripcion");
            tbEspecialidad=new tbEspecialidades();
            tbEspecialidad.setEsp_Descripcion(descripcion);
             msj =tbEspecialidadDAO.add(tbEspecialidad);
             out.write(msj);             
        }else if(request.getParameter("Accion").equalsIgnoreCase("Editar"))
        {
            String ID = request.getParameter("ID");
            String descripcion =request.getParameter("Descripcion");
            tbEspecialidad=new tbEspecialidades();
            tbEspecialidad.setEsp_Id(Integer.parseInt(ID));
            tbEspecialidad.setEsp_Descripcion(descripcion);
             tbEspecialidadDAO.edit(tbEspecialidad);
            acceso = listar;
        }else if(request.getParameter("Accion").equalsIgnoreCase("Eliminar"))
        {
            String ID = request.getParameter("ID");
            tbEspecialidadDAO.delete(Integer.parseInt(ID));        
        }else if(request.getParameter("Accion").equalsIgnoreCase("Listar")){            
            list=tbEspecialidadDAO.listar();
        }
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
