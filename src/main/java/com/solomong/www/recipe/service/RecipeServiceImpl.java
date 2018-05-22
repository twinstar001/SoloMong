package com.solomong.www.recipe.service;

import com.solomong.www.recipe.dao.RecipeDao;

public class RecipeServiceImpl implements RecipeService {

	private RecipeDao recipeDao;
	
	public void setRecipeDao(RecipeDao recipeDao) {
		this.recipeDao = recipeDao;
	}
	
	@Override
	public boolean putIngredient(String name) {
		return recipeDao.insertIngredient(name) > 0;
	}

}
