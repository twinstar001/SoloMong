package com.solomong.recipe.service;

import java.util.List;

import com.solomong.recipe.vo.RecipeVO;

public interface RecipeService {

	public boolean putIngredient(String name);
	
	public RecipeVO readOneRecipe(int id);
	public List<String> readSlideImg(int id);
	public List<RecipeVO> realAllRecipe();
}
