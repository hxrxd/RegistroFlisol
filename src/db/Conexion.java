/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author hxrxd
 */
public class Conexion {
     public static Connection getConexion() {
        String driver = "com.mysql.jdbc.Driver";
        String ip = "localhost";
        String bd = "flisol";
        String usr = "flisol";
        String  pass = "flisol";
        String url = "jdbc:mysql://" + ip + ":3306/" + bd;
        Connection conexion=null;
        try {
            Class.forName(driver).newInstance();
            conexion = (Connection) DriverManager.getConnection(url, usr, pass);
            System.out.println("Conexion a Base de Datos " + bd + " Ok");
        } catch (Exception exc) {
            System.out.println("Error al tratar de abrir la base de Datos" + bd + " : " + exc);
        }
        return conexion;
    }
    
}
