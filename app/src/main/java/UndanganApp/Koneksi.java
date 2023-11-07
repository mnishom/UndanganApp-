/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package UndanganApp;
import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;


/**
 *
 * @author LABKOM
 */
public class Koneksi {
    
    public static Connection Go(){
        try {
            MysqlDataSource m = new MysqlDataSource();
            m.setDatabaseName("undangan");
            m.setUser("root"); 
            m.setPassword(""); 
            m.setServerName("localhost"); 
            m.setPortNumber(3306); 
            m.setServerTimezone("Asia/Jakarta"); 
            Connection k = m.getConnection();
            System.out.println("Sukses!");
            
            return k;
        } catch (SQLException e) {
            System.err.println("Error: "+e.getMessage());
        }
        
        return null;
    }
    
//    public static void main(String[] args) {
//        Connection k = Go();
//    }
    
}
