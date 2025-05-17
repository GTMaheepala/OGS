package com.checkout.model;

public class checkout {
	
	private int id;
	private String country;
	private String streetName;
	private String city;
	private String district;
	private String province;
	private String custName;
	private int mobile;
	private String email;
	private String NIC;
	private String cName;
	private String cNo;
	private String eDate;
	private int CVV;
	
	public checkout(int id, String country, String streetName, String city, String district, String province, String custName, int mobile, String email, String NIC, String cName, String cNo, String eDate, int CVV) {
		super();
		this.id = id;
		this.country = country;
		this.streetName = streetName;
		this.city = city;
		this.district = district;
		this.province = province;
		this.custName = custName;
		this.mobile = mobile;
		this.email = email;
		this.NIC = NIC;
		this.cName = cName;
		this.cNo = cNo;
		this.eDate = eDate;
		this.CVV =CVV;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getStreetName() {
		return streetName;
	}


	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public String getProvince() {
		return province;
	}


	public void setProvince(String province) {
		this.province = province;
	}

	public String getCustName() {
		return custName;
	}


	public void setCustName(String custName) {
		this.custName = custName;
	}


	public int getMobile() {
		return mobile;
	}


	public void setMobile(int mobile) {
		this.mobile = mobile;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNIC() {
		return NIC;
	}


	public void setNIC(String NIC) {
		this.NIC = NIC;
	}


	public String getcName() {
		return cName;
	}


	public void setcName(String cName) {
		this.cName = cName;
	}


	public String getcNo() {
		return cNo;
	}


	public void setcNo(String cNo) {
		this.cNo = cNo;
	}


	public String geteDate() {
		return eDate;
	}


	public void seteDate(String eDate) {
		this.eDate = eDate;
	}


	public int getCVV() {
		return CVV;
	}


	public void setCVV(int CVV) {
		this.CVV = CVV;
	}
	
	
	
}
	

	
	