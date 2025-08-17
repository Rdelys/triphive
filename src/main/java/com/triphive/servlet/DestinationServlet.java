package com.triphive.servlet;

import com.triphive.dao.DestinationDAO;
import com.triphive.dao.PaysDAO;
import com.triphive.model.Destination;
import com.triphive.model.Pays;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/destination") // <-- Ajoutez cette annotation

public class DestinationServlet extends HttpServlet {
    private DestinationDAO destinationDAO;
    private PaysDAO paysDAO;

    public void init() {
        destinationDAO = new DestinationDAO();
        paysDAO = new PaysDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Destination> listeDestinations = destinationDAO.selectAll();
            List<Pays> listePays = paysDAO.selectAll();
            request.setAttribute("listeDestinations", listeDestinations);
            request.setAttribute("listePays", listePays);
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            if ("ajouter".equals(action)) {
                Destination d = new Destination();
                d.setPays(request.getParameter("pays"));
                d.setVille(request.getParameter("ville"));
                d.setDescription(request.getParameter("description"));
                d.setJours(Integer.parseInt(request.getParameter("jours")));
                d.setPrix(Double.parseDouble(request.getParameter("prix")));
                d.setPersonnes(Integer.parseInt(request.getParameter("personnes")));
                d.setCategorie(request.getParameter("categorie"));
                d.setPromotion(request.getParameter("promotion"));
                destinationDAO.insert(d);
            } else if ("modifier".equals(action)) {
                Destination d = new Destination();
                d.setId(Integer.parseInt(request.getParameter("id")));
                d.setPays(request.getParameter("pays"));
                d.setVille(request.getParameter("ville"));
                d.setDescription(request.getParameter("description"));
                d.setJours(Integer.parseInt(request.getParameter("jours")));
                d.setPrix(Double.parseDouble(request.getParameter("prix")));
                d.setPersonnes(Integer.parseInt(request.getParameter("personnes")));
                d.setCategorie(request.getParameter("categorie"));
                d.setPromotion(request.getParameter("promotion"));
                destinationDAO.update(d);
            } else if ("supprimer".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                destinationDAO.delete(id);
            }
            response.sendRedirect("destination");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
