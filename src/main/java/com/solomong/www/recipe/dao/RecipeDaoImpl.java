package com.solomong.www.recipe.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class RecipeDaoImpl extends SqlSessionDaoSupport implements RecipeDao {

	@Override
	public int insertIngredient(String name) {
		return getSqlSession().insert("RecipeDao.insertIngredient", name );
	}

}
