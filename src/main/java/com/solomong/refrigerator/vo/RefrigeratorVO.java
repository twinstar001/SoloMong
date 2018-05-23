package com.solomong.refrigerator.vo;

import com.solomong.ingredient.vo.IngredientVO;

public class RefrigeratorVO {

	private int refrigeratorId;
	private String refrigeratorRegistDate;
	private String refrigeratorUseByDate;
	private String refrigeratorExpirationDate;
	private int memberId;
	

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

}
