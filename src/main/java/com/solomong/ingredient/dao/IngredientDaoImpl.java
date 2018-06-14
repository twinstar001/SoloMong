package com.solomong.ingredient.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.ingredient.vo.IngredientVO;

public class IngredientDaoImpl extends SqlSessionDaoSupport implements IngredientDao{


	@Override
	public List<IngredientVO> selectIngredientNameByType(String type) {
		return getSqlSession().selectList("IngredientDao.selectIngredientNameByType", type);
	}

	@Override
	public int selectIngredientName(String name) {
		return getSqlSession().selectOne("IngredientDao.selectIngredientName", name);
	}

	@Override
	public List<IngredientVO> selectIngredientNameAll() {
		return getSqlSession().selectList("IngredientDao.selectIngredientNameAll");
	}

	@Override
	public int selectIngredientUsebyPeriod(int name) {
		return getSqlSession().selectOne("IngredientDao.selectIngredientUsebyPeriod", name);
	}
	
	
}
