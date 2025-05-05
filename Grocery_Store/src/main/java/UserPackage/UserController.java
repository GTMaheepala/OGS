package UserPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata(String first_name, String last_name, String email, int phone_no, String password) {
		 isSuccess = false;
		
		try {
			//DB CONNECTION CALL
			con=DB_Connection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into user values(0,'"+first_name+"', '"+last_name+"','"+email+"','"+phone_no+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//Login Validate
	public static List<UserModel> validateLogin(String email, String password) {
	    
		ArrayList<UserModel> user = new ArrayList<>();

	    try {
	        //DC CONNECTION CALL
	    	con=DB_Connection.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from user where" + "email='"+email+"'and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String first_name = rs.getString(2);
				String last_name = rs.getString(3);
				String Email = rs.getString(4);
				int phone_no = rs.getInt(5);
				String Password = rs.getString(6);
				
				UserModel u = new UserModel(id,first_name,last_name,Email,phone_no,Password);
				user.add(u);
			}

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user;
	}

}
