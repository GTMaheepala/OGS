package com.promotion.model;

public class PromotionModel {
	
	private int promoId;
    private String promoCode;
    private String description;
    private String discountType;
    private double value;
    private String validFrom;
    private String validTo;
    private String usageLimit;
    
	public PromotionModel(int promoId, String promoCode, String description, String discountType, double value,
			String validFrom, String validTo, String usageLimit) {
		super();
		this.promoId = promoId;
		this.promoCode = promoCode;
		this.description = description;
		this.discountType = discountType;
		this.value = value;
		this.validFrom = validFrom;
		this.validTo = validTo;
		this.usageLimit = usageLimit;
	}
	

	public int getPromoId() {
		return promoId;
	}

	public void setPromoId(int promoId) {
		this.promoId = promoId;
	}

	public String getPromoCode() {
		return promoCode;
	}

	public void setPromoCode(String promoCode) {
		this.promoCode = promoCode;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDiscountType() {
		return discountType;
	}

	public void setDiscountType(String discountType) {
		this.discountType = discountType;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public String getValidFrom() {
		return validFrom;
	}

	public void setValidFrom(String validFrom) {
		this.validFrom = validFrom;
	}

	public String getValidTo() {
		return validTo;
	}

	public void setValidTo(String validTo) {
		this.validTo = validTo;
	}

	public String getUsageLimit() {
		return usageLimit;
	}

	public void setUsageLimit(String usageLimit) {
		this.usageLimit = usageLimit;
	}
    
    

}
