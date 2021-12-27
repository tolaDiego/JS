/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author diego
 */
public class Conexion {

    private String username = "root";
    private String pass = "123456";
    private String host = "localhost";
    private String port = "3306";
    private String namebd = "bdweb";
    private String nameclass = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://" + host + ":" + port + "/" + namebd;
    private Connection con;

    public Conexion(){
        try {
            Class.forName(nameclass);
            con = DriverManager.getConnection(url, username, pass);
        } catch (ClassNotFoundException e) {
            System.out.println("Error" + e);
        } catch (SQLException e) {
            System.err.println("Error" + e);
        }
    }

    public Connection getConexion() {
        return con;
    }
    /*public static void main(String [] a) throws SQLException {
    Conexion con=new Conexion();
}*/
}
