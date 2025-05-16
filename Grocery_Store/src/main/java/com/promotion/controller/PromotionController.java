package com.promotion.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.promotion.model.PromotionModel;
import com.promotion.util.DB_Connection;

public class PromotionController {
	
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		// Insert Promotion Data Function
		public static boolean insertPromotion(String promoCode, String description, String discountType,
		                                     double value, String validFrom, String validTo, String usageLimit) {
		    boolean isSuccess = false;

		    try {
		        // DB Connection
		        con = DB_Connection.getConnection();
		        stmt = con.createStatement();

		        // SQL Insert Query
		        String sql = "INSERT INTO promotions VALUES (0, '" + promoCode + "', '" + description + "', '" + discountType + "', "
		                   + value + ", '" + validFrom + "', '" + validTo + "', '" + usageLimit + "')";

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
		
		
		// Get promotion by ID
		public static List<PromotionModel> getById(String idStr) {
		    int promotionId = Integer.parseInt(idStr);
		    ArrayList<PromotionModel> promotionList = new ArrayList<>();

		    try {
		        // DB CONNECTION CALL
		        Connection con = DB_Connection.getConnection();
		        Statement stmt = con.createStatement();

		        // Query
		        String sql = "SELECT * FROM promotions WHERE promo_id = '" + promotionId + "'";

		        ResultSet rs = stmt.executeQuery(sql);

		        while (rs.next()) {
		            int id = rs.getInt(1);
		            String promoCode = rs.getString(2);
		            String description = rs.getString(3);
		            String discountType = rs.getString(4);
		            double value = rs.getDouble(5);
		            String validFrom = rs.getString(6);
		            String validTo = rs.getString(7);
		            String usageLimit = rs.getString(8);

		            PromotionModel promo = new PromotionModel(id, promoCode, description, discountType, value, validFrom, validTo, usageLimit);
		            promotionList.add(promo);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return promotionList;
		}
		
		
		// Get All Promotions
		public static List<PromotionModel> getAllPromotions() {
		    ArrayList<PromotionModel> promotions = new ArrayList<>();

		    try {
		        // DB CONNECTION CALL
		        con = DB_Connection.getConnection();
		        stmt = con.createStatement();

		        // Query
		        String sql = "SELECT * FROM promotions";

		        rs = stmt.executeQuery(sql);

		        while (rs.next()) {
		            int id = rs.getInt(1);
		            String promoCode = rs.getString(2);
		            String description = rs.getString(3);
		            String discountType = rs.getString(4);
		            double value = rs.getDouble(5);
		            String validFrom = rs.getString(6);
		            String validTo = rs.getString(7);
		            String usageLimit = rs.getString(8);

		            PromotionModel p = new PromotionModel(id, promoCode, description, discountType, value, validFrom, validTo, usageLimit);
		            promotions.add(p);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return promotions;
		}
		
		
		// Update Promotion
		public static boolean updatePromotion(int id, String promoCode, String description, String discountType, double value, String validFrom, String validTo, int usageLimit) {
		    

		    try {
		        // DB CONNECTION CALL
		        con = DB_Connection.getConnection();
		        stmt = con.createStatement();

		        // SQL query
		        String sql = "UPDATE promotions SET promo_code='" + promoCode + "', description='" + description + 
		                     "', discount_type='" + discountType + "', value='" + value + 
		                     "', valid_from='" + validFrom + "', valid_to='" + validTo + 
		                     "', usage_limit='" + usageLimit + "'" +"WHERE promo_id='" + id+"'";

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
		
		
		// Delete Promotion by ID
				public static boolean deletePromotion(String id) {
				    int promotionId = Integer.parseInt(id);
				    boolean isSuccess = false;

				    try {
				        // DB CONNECTION CALL
				        con = DB_Connection.getConnection();
				        stmt = con.createStatement();

				        // SQL DELETE query
				        String sql = "DELETE FROM promotions WHERE promo_id='" + promotionId + "'";

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
