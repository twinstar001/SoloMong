package com.solomong.myrecipe.dao;

import java.util.List;

import com.solomong.community.vo.CommunityVO;
import com.solomong.myrecipe.vo.MyrecipeVO;

public interface MyrecipeDao {
	public int insertTitle(MyrecipeVO myrecipeVO);
	public int insertIntroduction(MyrecipeVO myrecipeVO);
	public int insertIngredient(MyrecipeVO myrecipeVO);
	public int insertStep(MyrecipeVO myrecipeVO);
	public int insertTip(MyrecipeVO myrecipeVO);
	public int insertImage(MyrecipeVO myrecipeVO);
	public List<MyrecipeVO> selectAll();
	public List<MyrecipeVO> selectImage();
	
	
	public MyrecipeVO selectOne(int id);
	
}
