package Practice_jsp.Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DatabaseConfig {
	public static Connection getConnection() {
		String dbURL="jdbc:mqsql://localhost:3306/studyeasy?useSSl=false";
		String dbUsername = "root";
		String dbPassword = "root";
		Connection con = null;
		try {
			Class.forName("co,.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
}
