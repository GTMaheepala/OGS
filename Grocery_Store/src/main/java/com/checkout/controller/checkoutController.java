package com.checkout.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.checkout.model.checkout;
import com.promotion.util.DB_Connection;

public class checkoutController {
	
		//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		// Insert data function
	    public static boolean insertdata(String country, String streetName, String city, String district,String province,String custName, int mobile,String email, String NIC, String cName, String cNo, String eDate, int CVV) {
	     boolean isSuccess = false;
	        try {
	        	// DB Connection
		        con = (Connection) DB_Connection.getConnection();
		        stmt = (Statement) con.createStatement();

	            // Updated SQL insert query with correct column order
	            String sql = "INSERT INTO checkout values (0,'" +country+ "', '" + streetName + "', '" + city + "', '" +district + "', '" + province + "', '" + custName + "', '" +
	                         mobile + "', '" + email + "', '" + NIC + "', '" + cName + "', '" + cNo + "', '" + eDate + "', '" + CVV + "')";

	            int rs = stmt.executeUpdate(sql);
	            if (rs > 0) {
	                isSuccess = true;
	            }
	            else {
	            	isSuccess = false;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }
			
	    // Get checkout by ID
	    public static List<checkout> getById(String ID) {
	    	int convertID = Integer.parseInt(ID);
	    	
	        ArrayList<checkout> checkout = new ArrayList<>();

	        try {
	        	// DB Connection
		        con = (Connection) DB_Connection.getConnection();
		        stmt = (Statement) con.createStatement();

	            // Correct SQL syntax (added '=')
	            String sql = "select * from checkout where id = '" + convertID + "'";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String country = rs.getString(2);
	                String streetName = rs.getString(3);
	                String city = rs.getString(4);
	                String district = rs.getString(5);
	                String province = rs.getString(6);
	                String custName = rs.getString(7);
	                int mobile = rs.getInt(8);
	                String email = rs.getString(9);
	                String NIC = rs.getString(10);
	                String cName = rs.getString(11);
	                String cNo = rs.getString(12);
	                String eDate = rs.getString(13);
	                int CVV = rs.getInt(14);

	                checkout c = new checkout(id, country, streetName, city, district, province, custName, mobile, email, NIC, cName, cNo, eDate, CVV);
	                checkout.add(c);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return checkout;
	    }
	    
	    
	 // Get checkout records for logged-in user
	    public static List<checkout> getCheckoutByUser(String userEmail) {
	        ArrayList<checkout> checkouts = new ArrayList<>();

	        try {
	            con = DB_Connection.getConnection();
	            stmt = con.createStatement();

	            // Filter by email
	            String sql = "SELECT * FROM checkout WHERE email = '" + userEmail + "'";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String country = rs.getString(2);
	                String streetName = rs.getString(3);
	                String city = rs.getString(4);
	                String district = rs.getString(5);
	                String province = rs.getString(6);
	                String custName = rs.getString(7);
	                int mobile = rs.getInt(8);
	                String email = rs.getString(9);
	                String NIC = rs.getString(10);
	                String cName = rs.getString(11);
	                String cNo = rs.getString(12);
	                String eDate = rs.getString(13);
	                int CVV = rs.getInt(14);

	                checkout c = new checkout(id, country, streetName, city, district, province, custName, mobile, email, NIC, cName, cNo, eDate, CVV);
	                checkouts.add(c);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return checkouts;
	    }

	    
			
	    // Get all checkout records
	    public static List<checkout> getAllCheckout() {
	        ArrayList<checkout> checkouts = new ArrayList<>();

	        try {
	        	// DB Connection
		        con = (Connection) DB_Connection.getConnection();
		        stmt = (Statement) con.createStatement();

	            String sql = "SELECT * FROM checkout";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String country = rs.getString(2);
	                String streetName = rs.getString(3);
	                String city = rs.getString(4);
	                String district = rs.getString(5);
	                String province = rs.getString(6);
	                String custName = rs.getString(7);
	                int mobile = rs.getInt(8);
	                String email = rs.getString(9);
	                String NIC = rs.getString(10);
	                String cName = rs.getString(11);
	                String cNo = rs.getString(12);
	                String eDate = rs.getString(13);
	                int CVV = rs.getInt(14);
	               
	                checkout c = new checkout(id, country, streetName, city, district, province,custName, mobile, email, NIC, cName, cNo, eDate, CVV);
	                checkouts.add(c);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return checkouts;
	    }
	  //update data
	    public static boolean updatedata(int id, String country, String streetName, String city, String district, String province, String custName, int mobile, String email, String NIC, String cName, String cNo, String eDate, int CVV) {
	    	try {
	    		//DB Connection
	    		con = DB_Connection.getConnection();
	            stmt = con.createStatement();
	            
	            //sql query
	            String  sql = "UPDATE checkout SET country='"+country+"', streetName='"+streetName+"', city='"+city+"', district='"+district+"', province='"+province+"', custName='"+custName+"', mobile='"+mobile+"', email='"+email+"', NIC='"+NIC+"', cName='"+cName+"', cNo='"+cNo+"', eDate='"+eDate+"', CVV='"+CVV+"' WHERE id='"+id+"'";
	            
	            int rs = stmt.executeUpdate(sql);
	            
	            if (rs > 0) {
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
	    
	    //delete data
	    public static boolean deletedata(String id) {
	    	int convertID = Integer.parseInt(id);
	    	try {
	    		// DB Connection
		        con = (Connection) DB_Connection.getConnection();
		        stmt = (Statement) con.createStatement();
	            
	            String sql = "delete from checkout where id='"+convertID+"'";
	            
	            int rs = stmt.executeUpdate(sql);
	            
	            if (rs > 0) {
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
}
	    
