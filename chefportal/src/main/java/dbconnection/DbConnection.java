package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	 

	    private static final String URL = "jdbc:mysql://localhost:3306/chef2";
	    private static final String USERNAME = "root";
	    private static final String PASSWORD = "Avinash@1505";

	    public static Connection getConnection() throws SQLException {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	        } catch (ClassNotFoundException | SQLException e) {
	            throw new SQLException("Error establishing database connection: " + e.getMessage());
	        }
	    }
}
