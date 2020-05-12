package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private final String driver;
    private final String url;
    private final String User;
    private final String pass;
    Connection con;

    public Conexion() {
        this.driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        this.pass = "Admin123";
        this.User = "admin";
        this.url = "jdbc:sqlserver://ramt.ctjgjdgor1el.us-east-2.rds.amazonaws.com;databaseName=HospitalBI";
    }
    
    public Connection Conectar(){        
        try{
            Class.forName(driver);
            con=(DriverManager.getConnection(url, User, pass));
        }catch(ClassNotFoundException | SQLException e){
            String ex=e.getMessage();
           System.err.print("Error: " + ex);
        }
        return con;
    }
}
