package com.triphive.dao;

import com.triphive.model.Pays;
import java.sql.*;
import java.util.*;

public class PaysDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/triphive?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_SQL = "INSERT INTO pays (nom, description) VALUES (?, ?)";
    private static final String SELECT_ALL = "SELECT * FROM pays";
    private static final String UPDATE_SQL = "UPDATE pays SET nom=?, description=? WHERE id=?";
    private static final String DELETE_SQL = "DELETE FROM pays WHERE id=?";

    protected Connection getConnection() throws SQLException {
        try {
            // Depuis MySQL Connector/J 8.0.13+
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver MySQL non trouvé", e);
        }

        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }


    public void insert(Pays p) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_SQL)) {
            ps.setString(1, p.getNom());
            ps.setString(2, p.getDescription());
            ps.executeUpdate();
        }
    }

    public List<Pays> selectAll() throws SQLException {
        List<Pays> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Pays p = new Pays();
                p.setId(rs.getInt("id"));
                p.setNom(rs.getString("nom"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        }
        return list;
    }

    public void update(Pays p) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_SQL)) {
            ps.setString(1, p.getNom());
            ps.setString(2, p.getDescription());
            ps.setInt(3, p.getId());
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
