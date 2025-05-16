package com.delivery.model;

public class DeliveryModel {
	
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private int phoneNO;
	private String companyName;
	private String status;
	private String vehicleType;
	
	
	public DeliveryModel(int id, String firstName, String lastName, String email, int phoneNO, String companyName, String status, String vehicleType) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNO = phoneNO;
		this.companyName = companyName;
		this.status = status;
		this.vehicleType = vehicleType;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getPhoneNO() {
		return phoneNO;
	}


	public void setPhoneNO(int phoneNO) {
		this.phoneNO = phoneNO;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getVehicleType() {
		return vehicleType;
	}


	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	
	

}
