package com.solomong.myrecipe.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.community.vo.CommunityVO;
import com.solomong.myrecipe.vo.MyrecipeVO;

public class MyrecipeDaoImplForOracle extends SqlSessionDaoSupport implements MyrecipeDao{
	
	@Override
	public int insertIngredient(MyrecipeVO myrecipeVO) {
		String[] ingredientNames = myrecipeVO.getIngredientName().split(",");
		String[] ingredientQuantitys = myrecipeVO.getIngredientQuantity().split(",");
		
		int resultCount2=0;
		
		for(int i=0; i< ingredientNames.length; i++) {
			MyrecipeVO recipe = new MyrecipeVO();
			recipe.setIngredientName(ingredientNames[i]);
			recipe.setIngredientQuantity(ingredientQuantitys[i]);
			if(getSqlSession().insert("MyrecipeDao.insertIngredient", recipe)>0) {
				resultCount2++;
			}
		}
		return resultCount2;
	}

	@Override
	public int insertStep(MyrecipeVO myrecipeVO) {
		String[] steps = myrecipeVO.getStep().split(",");
		
		int resultCount = 0;
		
		for(int i = 0; i < steps.length; i++ ) {
			MyrecipeVO stepVO = new MyrecipeVO();
			stepVO.setStep(steps[i]);
			if(getSqlSession().insert("MyrecipeDao.insertStep", stepVO) > 0) {
				resultCount++;
			}
		}
		return resultCount;
	}

	@Override
	public int insertTitle(MyrecipeVO myrecipeVO) {
		return getSqlSession().insert("MyrecipeDao.insertTitle", myrecipeVO);
	}

	@Override
	public int insertIntroduction(MyrecipeVO myrecipeVO) {
		return getSqlSession().insert("MyrecipeDao.insertIntroduction", myrecipeVO);
	}

	@Override
	public int insertTip(MyrecipeVO myrecipeVO) {
		return getSqlSession().insert("MyrecipeDao.insertTip", myrecipeVO);
	}

	@Override
	public List<MyrecipeVO> selectAll() {
		return getSqlSession().selectList("MyrecipeDao.selectAll");	
	}

	@Override
	public int insertImage(MyrecipeVO myrecipeVO) {
		return getSqlSession().insert("MyrecipeDao.insertImage", myrecipeVO);
	}

	@Override
	public List<MyrecipeVO> selectImage() {
		return getSqlSession().selectList("MyrecipeDao.selectImage");
	}

	@Override
	public MyrecipeVO selectOne(int id) {
		return getSqlSession().selectOne("MyrecipeDao.selectOne", id);
	}

}
