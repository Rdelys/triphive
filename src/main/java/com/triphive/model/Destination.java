package com.triphive.model;

public class Destination {
    private int id;
    private String pays;
    private String ville;
    private String description;
    private int jours;
    private double prix;
    private int personnes;
    private String categorie;
    private String promotion;

    public Destination() {}

    public Destination(int id, String pays, String ville, String description, int jours, double prix, int personnes, String categorie, String promotion) {
        this.id = id;
        this.pays = pays;
        this.ville = ville;
        this.description = description;
        this.jours = jours;
        this.prix = prix;
        this.personnes = personnes;
        this.categorie = categorie;
        this.promotion = promotion;
    }

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getPays() { return pays; }
    public void setPays(String pays) { this.pays = pays; }

    public String getVille() { return ville; }
    public void setVille(String ville) { this.ville = ville; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getJours() { return jours; }
    public void setJours(int jours) { this.jours = jours; }

    public double getPrix() { return prix; }
    public void setPrix(double prix) { this.prix = prix; }

    public int getPersonnes() { return personnes; }
    public void setPersonnes(int personnes) { this.personnes = personnes; }

    public String getCategorie() { return categorie; }
    public void setCategorie(String categorie) { this.categorie = categorie; }

    public String getPromotion() { return promotion; }
    public void setPromotion(String promotion) { this.promotion = promotion; }
}
