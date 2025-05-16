package com.contact.model;

public class ConusModel {
	
	private int id;
    private String fullName;
    private String email;
    private String message;
    
    
	public ConusModel(int id, String fullName, String email, String message) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.message = message;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}

    

}
