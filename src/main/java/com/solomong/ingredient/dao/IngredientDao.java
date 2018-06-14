package com.solomong.ingredient.dao;

import java.util.List;

import com.solomong.ingredient.vo.IngredientVO;


public interface IngredientDao {
	public List<IngredientVO> selectIngredientNameByType(String type);
	public List<IngredientVO> selectIngredientNameAll();
	public int selectIngredientName(String name);
	public int selectIngredientUsebyPeriod(int name);
}
