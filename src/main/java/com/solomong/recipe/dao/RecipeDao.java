package com.solomong.recipe.dao;

import java.util.List;

import com.solomong.recipe.vo.RecipeVO;

public interface RecipeDao {

	public int insertIngredient(String name);
	
	public RecipeVO selectOneRecipe1(int id);
	public List<String> selectOneRecipe2(int id);
	public List<RecipeVO> selectAllRecipe();
}
