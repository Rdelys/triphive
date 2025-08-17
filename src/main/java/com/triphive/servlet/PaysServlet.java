package com.triphive.servlet;

import com.triphive.dao.PaysDAO;
import com.triphive.model.Pays;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/pays")
public class PaysServlet extends HttpServlet {
    private PaysDAO dao;

    public void init() {
        dao = new PaysDAO();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
            switch (action) {
                case "ajouter":
                    ajouterPays(req, resp);
                    break;
                case "modifier":
                    modifierPays(req, resp);
                    break;
                case "supprimer":
                    supprimerPays(req, resp);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Pays> list = dao.selectAll();
            req.setAttribute("listePays", list);
            RequestDispatcher dispatcher = req.getRequestDispatcher("admin.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void ajouterPays(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Pays p = new Pays();
        p.setNom(nom);
        p.setDescription(description);
        dao.insert(p);
        resp.sendRedirect("pays");
    }

    private void modifierPays(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Pays p = new Pays();
        p.setId(id);
        p.setNom(nom);
        p.setDescription(description);
        dao.update(p);
        resp.sendRedirect("pays");
    }

    private void supprimerPays(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        dao.delete(id);
        resp.sendRedirect("pays");
    }
}
