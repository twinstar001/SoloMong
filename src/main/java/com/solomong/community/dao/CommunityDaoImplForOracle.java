package com.solomong.community.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.community.vo.CommunityVO;

public class CommunityDaoImplForOracle extends SqlSessionDaoSupport implements CommunityDao{
	
	@Override
	public int insertCommunity(CommunityVO communityVO) {
		return getSqlSession().insert("CommunityDao.insertCommunity", communityVO);
	}

	@Override
	public List<CommunityVO> selectAll() {
		return getSqlSession().selectList("CommunityDao.selectAll");
	}

	@Override
	public CommunityVO selectOne(int id) {
		return getSqlSession().selectOne("CommunityDao.selectOne", id);
	}

	@Override
	public int incrementView(int id) {
		return getSqlSession().update("CommunityDao.incrementView", id);
	}
	
	@Override
	public int incrementRecommend(int id) {
		return getSqlSession().update("CommunityDao.incrementRecommend", id);
	}

	@Override
	public int updateCommunity(CommunityVO communityVO) {
		return getSqlSession().update("CommunityDao.updateCommunity", communityVO);
	}
	
	@Override
	public int deleteCommunity(int id) {
		
		return getSqlSession().delete("CommunityDao.deleteCommunity", id);
	}
}
