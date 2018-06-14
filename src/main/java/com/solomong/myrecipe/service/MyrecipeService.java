package com.solomong.myrecipe.service;

import java.util.List;

import com.solomong.community.vo.CommunityVO;
import com.solomong.myrecipe.vo.MyrecipeVO;

public interface MyrecipeService {
	
	public boolean createIngredient(MyrecipeVO myrecipeVO);
	
	//public boolean createStep(MyrecipeVO myrecipeVO);
	
	public List<MyrecipeVO> getAll();
	public List<MyrecipeVO> getImage();
	
	public MyrecipeVO getOne(int id);
	
}
