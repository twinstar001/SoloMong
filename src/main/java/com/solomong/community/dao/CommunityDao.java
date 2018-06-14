package com.solomong.community.dao;

import java.util.List;

import com.solomong.community.vo.CommunityVO;

public interface CommunityDao {

	public int insertCommunity(CommunityVO communityVO);
	
	public List<CommunityVO> selectAll();
	
	public CommunityVO selectOne(int id);
	
	public int incrementView(int id);

	public int incrementRecommend(int id);
	
	public int updateCommunity(CommunityVO communityVO);
	
	public int deleteCommunity(int id);
}
