package sliit.intern;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
import javax.servlet.ServletContext;

public class DB {
    private static Connection c;
    
    public static Connection connect(ServletContext context) throws Exception {
        if (c == null || c.isClosed()) {
            String url = context.getInitParameter("url");
            String username = context.getInitParameter("username");
            String password = context.getInitParameter("password");
            
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            c = DriverManager.getConnection(url, username, password);
        }
        return c;
    }
}