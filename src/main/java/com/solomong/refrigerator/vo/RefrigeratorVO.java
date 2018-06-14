package com.solomong.refrigerator.vo;


public class RefrigeratorVO {

	private int refrigeratorId;
	private String refrigeratorRegistDate;
	private String refrigeratorUseByDate;
	private String refrigeratorExpirationDate;
	private int memberId;
	private int ingredientId;
	private String ingredientName;
	

	public int getRefrigeratorId() {
		return refrigeratorId;
	}

	public void setRefrigeratorId(int refrigeratorId) {
		this.refrigeratorId = refrigeratorId;
	}

	public String getRefrigeratorRegistDate() {
		return refrigeratorRegistDate;
	}

	public void setRefrigeratorRegistDate(String refrigeratorRegistDate) {
		this.refrigeratorRegistDate = refrigeratorRegistDate;
	}

	public String getRefrigeratorUseByDate() {
		return refrigeratorUseByDate;
	}

	public void setRefrigeratorUseByDate(String refrigeratorUseByDate) {
		this.refrigeratorUseByDate = refrigeratorUseByDate;
	}

	public String getRefrigeratorExpirationDate() {
		return refrigeratorExpirationDate;
	}

	public void setRefrigeratorExpirationDate(String refrigeratorExpirationDate) {
		this.refrigeratorExpirationDate = refrigeratorExpirationDate;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getIngredientId() {
		return ingredientId;
	}

	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}

	public String getIngredientName() {
		return ingredientName;
	}

	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}

}
