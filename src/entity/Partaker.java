/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author hxrxd
 */
public class Partaker {
    int Id_Partaker;
    String Name;
    String Email;
    Date DateIn;
    String Place;
    String IS;
    String IC;
    String II;

    public Partaker(int Id_Partaker, String Name, String Email, Date DateIn, String IS, String IC, String II) {
        this.Id_Partaker = Id_Partaker;
        this.Name = Name;
        this.Email = Email;
        this.DateIn = DateIn;
        this.IS = IS;
        this.IC = IC;
        this.II = II;
    }

    public Partaker() {
    }

    public String getPlace() {
        return Place;
    }

    public void setPlace(String Place) {
        this.Place = Place;
    }
    
    

    public int getId_Partaker() {
        return Id_Partaker;
    }

    public void setId_Partaker(int Id_Partaker) {
        this.Id_Partaker = Id_Partaker;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public Date getDateIn() {
        return DateIn;
    }

    public void setDateIn(Date DateIn) {
        this.DateIn = DateIn;
    }

    public String getIS() {
        return IS;
    }

    public void setIS(String IS) {
        this.IS = IS;
    }

    public String getIC() {
        return IC;
    }

    public void setIC(String IC) {
        this.IC = IC;
    }

    public String getII() {
        return II;
    }

    public void setII(String II) {
        this.II = II;
    }
    
    
    
}
