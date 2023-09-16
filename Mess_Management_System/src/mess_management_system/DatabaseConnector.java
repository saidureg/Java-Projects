
package mess_management_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class DatabaseConnector {
    
    public static void main(String[] args) {
        connection();
    }
    
    final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final static String DB_URL = "jdbc:mysql://127.0.0.1:3306/mess_management_system";
    final static String USER = "root";
    final static String PASS = "";
    
    public static Connection connection(){
        
       try{
           Class.forName(JDBC_DRIVER);
           Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
           System.out.println("Connected");
           return conn;

       }catch (Exception e) {
           JOptionPane.showMessageDialog(null,e);
           return null;
            }
        }
        
    }
