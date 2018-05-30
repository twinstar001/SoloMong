package com.solomong.community.service;

import java.util.List;

import com.solomong.community.vo.CommunityVO;

public interface CommunityService {

	public boolean createCommunity(CommunityVO communityVO);
	
	public List<CommunityVO> getAll();
	
	public CommunityVO getOne(int id);
	
	public void increaseR(int id);
	
	public boolean increaseV(int id);
	
	public boolean updateCommunity(CommunityVO communityVO);
	
	public boolean removePage(int id);
}
