package com.solomong.board.service;

import com.solomong.board.dao.CommunityBoardDao;
import com.solomong.board.vo.CommunityBoardVO;

public class CommunityBoardServiceImpl implements CommunityBoardService {
	private CommunityBoardDao communityBoardDao;
	
	public void setCommunityBoardDao(CommunityBoardDao communityBoardDao) {
		this.communityBoardDao = communityBoardDao;
	}

	@Override
	public boolean createCommunityBoard(CommunityBoardVO CBoardVO) {
		return communityBoardDao.InsertCommunityBoard(CBoardVO) > 0;
	}
	
	
	
}
