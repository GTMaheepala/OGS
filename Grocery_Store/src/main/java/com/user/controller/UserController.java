package com.user.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.model.UserModel;
import com.user.util.DB_Connection;

public class UserController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Register Data Function
	public static boolean insertdata(String first_name, String last_name, String email, int phone_no, String password, int check_user) {
		 isSuccess = false;
		
		try {
			//DB CONNECTION CALL
			con=DB_Connection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into user values(0,'"+first_name+"', '"+last_name+"','"+email+"','"+phone_no+"','"+password+"','"+check_user+"')";
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
	        con = DB_Connection.getConnection();

	        // Use PreparedStatement to avoid SQL syntax issues and SQL injection
	        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, email);
	        ps.setString(2, password);

	        rs = ps.executeQuery();

	        if (rs.next()) {
	            int id = rs.getInt(1);
	            String first_name = rs.getString(2);
	            String last_name = rs.getString(3);
	            String Email = rs.getString(4);
	            int phone_no = rs.getInt(5);
	            String Password = rs.getString(6);
	            int Check_user = rs.getInt(7);

	            UserModel u = new UserModel(id, first_name, last_name, Email, phone_no, Password, Check_user);
	            user.add(u);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user;
	}
	
	//Display user profile
	public static List<UserModel> userProfile(String Id){
		int convertID = Integer.parseInt(Id);
		
		ArrayList<UserModel> user = new ArrayList<>();
		
		try {
			//DB CONNECTION CALL
			con = DB_Connection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where id = '"+convertID+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int id = rs.getInt(1);
	            String first_name = rs.getString(2);
	            String last_name = rs.getString(3);
	            String email = rs.getString(4);
	            int phone_no = rs.getInt(5);
	            String password = rs.getString(6);
	            int Check_user = rs.getInt(7);

	            UserModel u = new UserModel(id, first_name, last_name, email, phone_no, password, Check_user);
	            user.add(u);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	//User Profile Update
	public static boolean updateprofile(int id, String first_name, String last_name, String email, int phone_no, String password, int check_user) {
		try {
			//DB CONNECTION CALL
			con = DB_Connection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "update user set first_name='"+first_name+"', last_name='"+last_name+"', email='"+email+"', phone_no='"+phone_no+"',password='"+password+"'"
					+"where id ='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//Employee Profile Update
	public static boolean updateEmployee(int id, String first_name, String last_name, String email, int phone_no, String password, int check_user) {
	    boolean isSuccess = false;

	    try {
	        con = DB_Connection.getConnection();

	        String sql = "UPDATE user SET first_name=?, last_name=?, email=?, phone_no=?, password=?, check_user=? WHERE id=?";
	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, first_name);
	        ps.setString(2, last_name);
	        ps.setString(3, email);
	        ps.setInt(4, phone_no);
	        ps.setString(5, password);
	        ps.setInt(6, check_user);
	        ps.setInt(7, id);

	        int rs = ps.executeUpdate();

	        if (rs > 0) {
	            isSuccess = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}


	//Get by ID
	public static List<UserModel> getById (String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <UserModel> user = new ArrayList<>();
		
		try {
			//DB CONNECTION CALL
			con = DB_Connection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from user where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
	            String first_name = rs.getString(2);
	            String last_name = rs.getString(3);
	            String email = rs.getString(4);
	            int phone_no = rs.getInt(5);
	            String password = rs.getString(6);
	            int check_user = rs.getInt(7);
	            
	            UserModel u = new UserModel(id, first_name, last_name, email, phone_no, password, check_user);
	            user.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	//Delete Data
	public static boolean deleteAccount(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DB CONNECTION CALL
			con = DB_Connection.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from user where id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Get All Data User
	public static List<UserModel> getAllUser (){
		ArrayList <UserModel> users = new ArrayList<>();
		
		try {
			//DB CONNECTION CALL
			con = DB_Connection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from user where check_user = 1";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
	            String first_name = rs.getString(2);
	            String last_name = rs.getString(3);
	            String email = rs.getString(4);
	            int phone_no = rs.getInt(5);
	            String password = rs.getString(6);
	            int check_user = rs.getInt(7);
	            
	            UserModel u = new UserModel(id, first_name, last_name, email, phone_no, password, check_user);
	            users.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return users;
		
	}
	
	
	//Get All Data Employee
		public static List<UserModel> getAllEmployee (){
			ArrayList <UserModel> employees = new ArrayList<>();
			
			try {
				//DB CONNECTION CALL
				con = DB_Connection.getConnection();
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from user where check_user != 1";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
		            String first_name = rs.getString(2);
		            String last_name = rs.getString(3);
		            String email = rs.getString(4);
		            int phone_no = rs.getInt(5);
		            String password = rs.getString(6);
		            int check_user = rs.getInt(7);
		            
		            UserModel m = new UserModel(id, first_name, last_name, email, phone_no, password, check_user);
		            employees.add(m);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return employees;
			
		}

}
