package com.solomong.community.service;

import java.util.List;

import com.solomong.community.dao.CommunityDao;
import com.solomong.community.vo.CommunityVO;

public class CommunityServiceImpl implements CommunityService{

	private CommunityDao communityDao;
	
	public CommunityDao getCommunityDao() {
		return communityDao;
	}

	public void setCommunityDao(CommunityDao communityDao) {
		this.communityDao = communityDao;
	}

	@Override
	public boolean createCommunity(CommunityVO communityVO) {
		
		int insertCount = communityDao.insertCommunity(communityVO);
		
		return	insertCount > 0;
	}

	@Override
	public List<CommunityVO> getAll() {
		return communityDao.selectAll();
	}

	@Override
	public CommunityVO getOne(int id) {
		return communityDao.selectOne(id);
	}

	@Override
	public void increaseR(int id) {
		communityDao.incrementRecommend(id);
	}

	@Override
	public boolean increaseV(int id) {
		return communityDao.incrementView(id) > 0;
	}

	@Override
	public boolean updateCommunity(CommunityVO communityVO) {
		return communityDao.updateCommunity(communityVO) > 0;
	}

	@Override
	public boolean removePage(int id) {
		return communityDao.deleteCommunity(id) > 0;
	}
	
}
