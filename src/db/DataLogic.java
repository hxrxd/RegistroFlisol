/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import entity.Partaker;
import entity.Student;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hxrxd
 */
public class DataLogic {
   private Connection conexion;
   private Statement instruccion;
   private ResultSet conjuntoResultados;
   

    public DataLogic() {
         try {
           conexion = Conexion.getConexion();
           instruccion = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
         ResultSet.CONCUR_READ_ONLY );
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
    }
    
    public void addNewPartaker(Partaker p){
    String query = "INSERT INTO partaker(name, email,place, ics, ic, ii) VALUES ('"+p.getName()+"','"+p.getEmail()+"','"+p.getPlace()+"','"+p.getIS()+"','"+p.getIC()+"','"+p.getII()+"')";
        try {
           instruccion.executeUpdate(query);
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
    
    }
    
    public Student getStudentFromCarne(String carne){
        Student s  = new Student();
        String query = "SELECT name, career FROM students WHERE carne = '"+carne+"' ";
        
       try {
           conjuntoResultados = instruccion.executeQuery(query);
           if (conjuntoResultados.next()){
               s.setCareer(conjuntoResultados.getString(2));
               s.setName(conjuntoResultados.getString(1));
           }
           
       } catch (SQLException ex) {
           Logger.getLogger(DataLogic.class.getName()).log(Level.SEVERE, null, ex);
       }
           
        return s;
    }
    
}
