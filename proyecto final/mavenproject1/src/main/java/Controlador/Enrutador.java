/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author diego
 */
public class Enrutador extends Conexion {
    public String getNombre(Enrutador co){
        return "sdsd";
    }
    public boolean autenticacion(String nombre, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuarios where nombre=? and contraseña=?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();
            if (rs.next()) { //se valida si hay resultados
                do {
                   
                    return true;
                } while (rs.next()); //repita mientras existan más datos
            }
        } catch (SQLException e) {
            System.err.println("Error" + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println("Error" + e);

            }
        }
        return false;

    }
/*
    public static void main(String[] a) {
        Enrutador co = new Enrutador();
        System.out.println(co.autenticacion("diego", "1234"));
    }
*/
    public boolean registrar(String nombre,String mail, String contraseña){
        PreparedStatement pst=null;
        try{
            String consulta="insert into usuarios(nombre, mail, contraseña) values(?,?,?)";
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2, mail);
            pst.setString(3, contraseña);
            if(pst.executeUpdate()==1){
                return true;
            }
        }catch(Exception er){
            System.err.println("Error "+er);
        }finally{
            try{
                if(getConexion()!=null){
                    getConexion().close();
                }
            }catch(Exception ee){
                System.err.println("Error "+ee);
            }
        }
        return false; 
    }
    /*
      public static void main(String[] a) {
        Enrutador co = new Enrutador();
        co.registrar("lucas","luc@gmail.com","1234");
        System.out.print(co);
    }*/
      
}
