package com.solomong.recipe.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.recipe.vo.RecipeVO;

public class RecipeDaoImpl extends SqlSessionDaoSupport implements RecipeDao {

	@Override
	public int insertIngredient(String name) {
		return getSqlSession().insert("RecipeDao.insertIngredient", name );
	}

	@Override
	public RecipeVO selectOneRecipe1(int id) {
		return getSqlSession().selectOne("RecipeDao.selectOneRecipe1", id );
	}
	
	@Override
	public List<String> selectOneRecipe2(int id) {
		return getSqlSession().selectList("RecipeDao.selectOneRecipe2", id );
	}

	@Override
	public List<RecipeVO> selectAllRecipe() {
		return getSqlSession().selectList("RecipeDao.selectAllRecipe");
	}


}
