package com.solomong.history.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.history.vo.HistoryVO;

public class HistoryDaoImplForOracle extends SqlSessionDaoSupport implements HistoryDao {
	
	@Override
	public int insertHistory(HistoryVO historyVO) {
		return getSqlSession().insert("HistoryDao.insertHistory", historyVO);
	}

}
