package thisara;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	
	private static String url ="jdbc:mysql://localhost:3306/grocerystore";
	private static String user ="root";
	private static String pass ="tharusha";
	private static Connection con;
	
	public static Connection getConnection () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e){
			System.out.println("Database Not Connect !");
		}
		return con;		
	}

}
