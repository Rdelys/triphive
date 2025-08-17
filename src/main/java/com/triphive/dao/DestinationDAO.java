package com.triphive.dao;

import com.triphive.model.Destination;
import java.sql.*;
import java.util.*;

public class DestinationDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/triphive?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_SQL = "INSERT INTO destination (pays, ville, description, jours, prix, personnes, categorie, promotion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_ALL = "SELECT * FROM destination";
    private static final String UPDATE_SQL = "UPDATE destination SET pays=?, ville=?, description=?, jours=?, prix=?, personnes=?, categorie=?, promotion=? WHERE id=?";
    private static final String DELETE_SQL = "DELETE FROM destination WHERE id=?";

    protected Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver MySQL non trouvé", e);
        }
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public void insert(Destination d) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_SQL)) {
            ps.setString(1, d.getPays());
            ps.setString(2, d.getVille());
            ps.setString(3, d.getDescription());
            ps.setInt(4, d.getJours());
            ps.setDouble(5, d.getPrix());
            ps.setInt(6, d.getPersonnes());
            ps.setString(7, d.getCategorie());
            ps.setString(8, d.getPromotion());
            ps.executeUpdate();
        }
    }

    public List<Destination> selectAll() throws SQLException {
        List<Destination> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Destination d = new Destination(
                    rs.getInt("id"),
                    rs.getString("pays"),
                    rs.getString("ville"),
                    rs.getString("description"),
                    rs.getInt("jours"),
                    rs.getDouble("prix"),
                    rs.getInt("personnes"),
                    rs.getString("categorie"),
                    rs.getString("promotion")
                );
                list.add(d);
            }
        }
        return list;
    }

    public void update(Destination d) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_SQL)) {
            ps.setString(1, d.getPays());
            ps.setString(2, d.getVille());
            ps.setString(3, d.getDescription());
            ps.setInt(4, d.getJours());
            ps.setDouble(5, d.getPrix());
            ps.setInt(6, d.getPersonnes());
            ps.setString(7, d.getCategorie());
            ps.setString(8, d.getPromotion());
            ps.setInt(9, d.getId());
            ps.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(DELETE_SQL)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}
