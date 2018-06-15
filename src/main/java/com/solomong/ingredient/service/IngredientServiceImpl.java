package com.solomong.ingredient.service;

import java.util.List;

import com.solomong.ingredient.dao.IngredientDao;
import com.solomong.ingredient.vo.IngredientVO;

public class IngredientServiceImpl implements IngredientService{

	private IngredientDao ingredientDao;
	
	public void setIngredientDao(IngredientDao ingredientDao) {
		this.ingredientDao = ingredientDao;
	}
	
	@Override
	public List<String> readIngredientNameByType(String type) {
		return ingredientDao.selectIngredientNameByType(type);
	}

	@Override
	public boolean isExistIngredient(String name) {
		return ingredientDao.selectIngredientName(name)>0;
	}

	@Override
	public List<IngredientVO> readIngredientNameAll() {
		return ingredientDao.selectIngredientNameAll();
	}

	@Override
	public int readIngredientUsebyPeriod(int name) {
		return ingredientDao.selectIngredientUsebyPeriod(name);
	}

	@Override
	public int readIngredientName(String name) {
		return ingredientDao.selectIngredientName(name);
	}

}
