package com.solomong.history.service;

import com.solomong.history.dao.HistoryDao;
import com.solomong.history.vo.HistoryVO;

public class HistoryServiceImpl implements HistoryService{

	private HistoryDao historyDao;
	public void setHistoryDao(HistoryDao historyDao) {
		this.historyDao = historyDao;
	}
	
	@Override
	public boolean createHistory(HistoryVO historyVO) {
		return historyDao.insertHistory(historyVO) > 0;
	}

}
