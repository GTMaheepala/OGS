package AdminPackage;


import java.sql.*;
import java.util.*;

public class UserDAO {
	
	 private static Connection con;
	    private static PreparedStatement ps;
	    private static ResultSet rs;

	    // Get all users
	    public static List<UserModel> getAllUsers() {
	        List<UserModel> users = new ArrayList<>();
	        try {
	            con = DB_Connection.getConnection();
	            String sql = "SELECT * FROM user";
	            ps = con.prepareStatement(sql);
	            rs = ps.executeQuery();

	            while (rs.next()) {
	                UserModel user = new UserModel(
	                    rs.getInt("id"),
	                    rs.getString("first_name"),
	                    rs.getString("last_name"),
	                    rs.getString("email"),
	                    rs.getInt("phone_no"),
	                    rs.getString("password"),
	                    rs.getInt("check_user")
	                );
	                users.add(user);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return users;
	        
	    }

	    // Update user
	    public static boolean updateUser(UserModel user) {
	        boolean success = false;
	        try {
	            con = DB_Connection.getConnection();
	            String sql = "UPDATE user SET first_name=?, last_name=?, email=?, phone_no=?, password=? WHERE id=?";
	            ps = con.prepareStatement(sql);
	            ps.setString(1, user.getFirst_name());
	            ps.setString(2, user.getLast_name());
	            ps.setString(3, user.getEmail());
	            ps.setInt(4, user.getPhone_no());
	            ps.setString(5, user.getPassword());
	            ps.setInt(6, user.getId());

	            int rows = ps.executeUpdate();
	            success = (rows > 0);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return success;
	    }

}
