package com.solomong.myrecipe.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MyrecipeVO {

	private String title;
	private String introduction;
	private String ingredientName;
	private String ingredientQuantity;
	private String step;
	private String tip;
	private String image;
	private int imageId;
	private MultipartFile file;
//	private String displayFilename;
//	
//	public String getDisplayFilename() {
//		if( displayFilename == null) {
//			displayFilename = "";
//		}
//		return displayFilename;
//	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getIngredientName() {
		return ingredientName;
	}

	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}

	public String getIngredientQuantity() {
		return ingredientQuantity;
	}

	public void setIngredientQuantity(String ingredientQuantity) {
		this.ingredientQuantity = ingredientQuantity;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getImage() {
		if (image == null) {
			image = "";
		}
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	// upload 코드
	public String save() {
		if (file != null && !file.isEmpty()) {
			
			String originalFileName = "";

			originalFileName = UUID.randomUUID().toString();

			image = originalFileName + file.getOriginalFilename();

			File newFile = new File("D:/image/" + image);
			try {
				file.transferTo(newFile);
				return newFile.getAbsolutePath();
			} catch (IllegalStateException e) {
				throw new RuntimeException(e.getMessage(), e);
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
		}
		return null;

	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

}
