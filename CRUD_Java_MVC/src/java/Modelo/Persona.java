/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author axter
 */
public class Persona {
    int id;
    int dni;
    String nom;
    public Persona() {
    }
    public Persona(int id, int dni, String nom) {
        this.id = id;
        this.dni = dni;
        this.nom = nom;
    }

    public int getId() {
        return id;
    }

    public int getDni() {
        return dni;
    }

    public String getNom() {
        return nom;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}
