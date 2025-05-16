package com.delivery.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.delivery.model.DeliveryModel;
import com.delivery.util.DB_Connection;


public class DataController {
	
	//database connection
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//insert data function
		
		public static boolean insertdata (String firstName, String lastName, String email, int phoneNO, String companyName, String status, String vehicleType) {
			
			 isSuccess = false;
			try {
				
				//data base connection call
				con = DB_Connection.getConnection();
				stmt = con.createStatement();
				
				//sql query
				
				String sql = "insert into deli_partner values(0,'"+firstName+"','"+lastName+"','"+email+"','"+phoneNO+"','"+companyName+"','"+status+"','"+vehicleType+"')";
				int rs = stmt.executeUpdate(sql);
				if(rs > 0) {
					
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
		
		
		//Get ByID
		public static List<DeliveryModel>getById(String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList <DeliveryModel> delivery = new ArrayList<>();
			
			try {
				//DBConnection  
				con = DB_Connection.getConnection();
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from deli_partner where id '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int id = rs.getInt(1);
					String firstName = rs.getString(2);
					String lastName = rs.getString(3);
					String email = rs.getString(4);
					int phoneNO = rs.getInt(5);
					String companyName = rs.getString(6);
					String status = rs.getString(7);
					String vehicleType = rs.getString(8);
					
					DeliveryModel dm = new DeliveryModel(id, firstName, lastName, email, phoneNO, companyName, status, vehicleType);
					delivery.add(dm);
				}
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return delivery;
		}
		
		//Get All Data
		public static List<DeliveryModel>getAllDelivery(){
			
			ArrayList <DeliveryModel> deliveries = new ArrayList<>();	
			
			try {
				//DBConnection  
				con = DB_Connection.getConnection();
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from deli_partner";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int id = rs.getInt(1);
					String firstName = rs.getString(2);
					String lastName = rs.getString(3);
					String email = rs.getString(4);
					int phoneNO = rs.getInt(5);
					String companyName = rs.getString(6);
					String status = rs.getString(7);
					String vehicleType = rs.getString(8);
					
					DeliveryModel dm = new DeliveryModel(id, firstName, lastName, email, phoneNO, companyName, status, vehicleType);
					deliveries.add(dm);
				}
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return deliveries;
		}

	//Update data
		
		public static boolean updatedata(String id, String firstName, String lastName, String email, String phoneNO, String companyName, String status, String vehicleType) {
			
			try {
				//DBConnection  
				con = DB_Connection.getConnection();
				stmt = con.createStatement();	
				
				//SQL Query
				String sql = "update deli_partner set firstName = '"+firstName+"', lastName = '"+lastName+"', email = '"+email+"', phoneNO = '"+phoneNO+"', companyName = '"+companyName+"', status = '"+status+"', vehicleType = '"+vehicleType+"'" + "where id = '"+id+"'" ;
				
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
		
		
		//delete Data
		public static boolean deletedata(String id) {
			
			int convID = Integer.parseInt(id);
			
			try {
				//DBConnection
				con = DB_Connection.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from deli_partner where id = '"+convID+"'";
				
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
		
		
}
