package com.solomong.ingredient.service;

import java.util.List;


import com.solomong.ingredient.vo.IngredientVO;

public interface IngredientService {
	
	public List<IngredientVO> readIngredientNameByType(String type);
	public boolean isExistIngredient(String name);
	public List<IngredientVO> readIngredientNameAll();
	public int readIngredientUsebyPeriod(int name);
	public int readIngredientName(String name);

}
