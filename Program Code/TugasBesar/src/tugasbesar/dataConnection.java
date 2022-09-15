/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tugasbesar;
import java.sql.*;

/**
 *
 * @author ardie
 */
public class dataConnection {
    private static Connection MySQLConfig;
    public static Connection configDB()throws SQLException{
        System.out.println("Trying Connect To Database.....");
        try{
            String url = "jdbc:mysql://localhost:3306/dbtubes";
            String userr = "root";
            String passs = "";
            
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            MySQLConfig = DriverManager.getConnection(url, userr, passs);
            System.out.println("Successfully Connect to Database");
        }catch(SQLException e){
            System.out.println("Can't Connect to Database" + e.getMessage());
        }
        return MySQLConfig;
    }
}
