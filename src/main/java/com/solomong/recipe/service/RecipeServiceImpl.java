package com.solomong.recipe.service;

import java.util.List;

import com.solomong.recipe.dao.RecipeDao;
import com.solomong.recipe.vo.RecipeVO;

public class RecipeServiceImpl implements RecipeService {

	private RecipeDao recipeDao;
	
	public void setRecipeDao(RecipeDao recipeDao) {
		this.recipeDao = recipeDao;
	}
	
	@Override
	public boolean putIngredient(String name) {
		return recipeDao.insertIngredient(name) > 0;
	}

	@Override
	public RecipeVO readOneRecipe(int id) {
		RecipeVO recipeVO = recipeDao.selectOneRecipe1(id);
		
		recipeVO.setSlideImg(recipeDao.selectOneRecipe2(id));
		return recipeVO;
	}

	@Override
	public List<RecipeVO> realAllRecipe() {
		return recipeDao.selectAllRecipe();
	}

	@Override
	public List<String> readSlideImg(int id) {
		return recipeDao.selectOneRecipe2(id);
	}

}
