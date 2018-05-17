package com.solomong.board.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.board.vo.CommunityBoardVO;

public class CommunityBoardDaoImplForOracle extends SqlSessionDaoSupport implements CommunityBoardDao {

	public int InsertCommunityBoard(CommunityBoardVO CBoard) {
		return getSqlSession().insert("CommunityBoardDao.InsertCommunityBoard", CBoard);
	}
	

}
