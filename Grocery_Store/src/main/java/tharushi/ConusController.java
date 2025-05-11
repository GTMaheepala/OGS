package tharushi;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import AdminPackage.DB_Connection;

public class ConusController {
	
	private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Contact Message
    public static boolean insertMessage(String fullName, String email, String message) {
        boolean isSuccess = false;

        try {
            
        	// DB Connection
	        con = (Connection) DB_Connection.getConnection();
	        stmt = (Statement) con.createStatement();
        	

            String sql = "INSERT INTO conus (full_name, email, message) VALUES ('" + 
                         fullName + "', '" + email + "', '" + message + "')";

            int result = stmt.executeUpdate(sql);
            isSuccess = result > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
    
    
 // Get All Contact Messages
    public static List<ConusModel> getAllMessages() {
        ArrayList<ConusModel> messages = new ArrayList<>();

        try {
            con = (Connection) DB_Connection.getConnection();
            stmt = (Statement) con.createStatement();

            String sql = "SELECT * FROM conus";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id"); // assuming there's an ID column
                String fullName = rs.getString("full_name");
                String email = rs.getString("email");
                String message = rs.getString("message");

                ConusModel msg = new ConusModel(id, fullName, email, message);
                messages.add(msg);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return messages;
    }
    
    
 // Update Contact Message
    public static boolean updateConus(int id, String fullName, String email, String message) {
        boolean isSuccess = false;

        try {
            // DB CONNECTION CALL
        	con = (Connection) DB_Connection.getConnection();
            stmt = (Statement) con.createStatement();

            // SQL query for updating the contact message
            String sql = "UPDATE conus SET full_name='" + fullName + "', email='" + email + "', message='" + message + "' WHERE id=" + id;

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
    
 // Get contact message by ID
    public static List<ConusModel> getById(String idStr) {
        int contactId = Integer.parseInt(idStr);
        ArrayList<ConusModel> conusList = new ArrayList<>();

        try {
            // DB CONNECTION CALL
        	con = (Connection) DB_Connection.getConnection();
            stmt = (Statement) con.createStatement();

            // Query to fetch contact message by ID
            String sql = "SELECT * FROM conus WHERE id = '" + contactId + "'";

            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String fullName = rs.getString(2);
                String email = rs.getString(3);
                String message = rs.getString(4);

                ConusModel conus = new ConusModel(id, fullName, email, message);
                conusList.add(conus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return conusList;
    }
    
 // Delete Contact Message by ID
    public static boolean deleteConusMessage(String id) {
    int conusId = Integer.parseInt(id);
    boolean isSuccess = false;
    
    try {
        // DB CONNECTION CALL
    	con = (Connection) DB_Connection.getConnection();
        stmt = (Statement) con.createStatement();

        // SQL DELETE query
        String sql = "DELETE FROM conus WHERE id='" + conusId + "'";

        int rs = stmt.executeUpdate(sql);

        if (rs > 0) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    return isSuccess;
    }

}
