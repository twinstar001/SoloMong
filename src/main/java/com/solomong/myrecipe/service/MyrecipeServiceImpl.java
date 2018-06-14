package com.solomong.myrecipe.service;

import java.util.List;

import com.solomong.community.vo.CommunityVO;
import com.solomong.myrecipe.dao.MyrecipeDao;
import com.solomong.myrecipe.vo.MyrecipeVO;

public class MyrecipeServiceImpl implements MyrecipeService{

	private MyrecipeDao myrecipeDao;
	
	public MyrecipeDao getMyrecipeDao() {
		return myrecipeDao;
	}

	public void setMyrecipeDao(MyrecipeDao myrecipeDao) {
		this.myrecipeDao = myrecipeDao;
	}

	@Override
	public boolean createIngredient(MyrecipeVO myrecipeVO) {
		
		int Count1 = myrecipeDao.insertTitle(myrecipeVO);
		int Count2 = myrecipeDao.insertIntroduction(myrecipeVO);
		int Count3 = myrecipeDao.insertIngredient(myrecipeVO);
		int Count4 = myrecipeDao.insertStep(myrecipeVO);
		int Count5 = myrecipeDao.insertTip(myrecipeVO);
		int Count6 = myrecipeDao.insertImage(myrecipeVO);
		
		return	Count1 > 0 && Count2 > 0 && Count3 > 0 && Count4 > 0 && Count5 > 0 && Count6 > 0 ;
	}

/*
	@Override
	public boolean createStep(MyrecipeVO myrecipeVO) {
		
		return	insertCount2 > 0;	
		}
*/
	@Override
	public List<MyrecipeVO> getAll() {
		return myrecipeDao.selectAll();
		
	}
	@Override
	public List<MyrecipeVO> getImage() {
		return myrecipeDao.selectImage();
		
	}

	@Override
	public MyrecipeVO getOne(int id) {
		return myrecipeDao.selectOne(id);
	}

	
}
