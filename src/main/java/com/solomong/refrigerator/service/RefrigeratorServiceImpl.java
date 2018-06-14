package com.solomong.refrigerator.service;

import java.util.List;

import com.solomong.refrigerator.dao.RefrigeratorDao;
import com.solomong.refrigerator.vo.RefrigeratorVO;

public class RefrigeratorServiceImpl implements RefrigeratorService{
	
	public RefrigeratorDao refrigeratorDao;
	
	public void setRefrigeratorDao(RefrigeratorDao refrigeratorDao) {
		this.refrigeratorDao = refrigeratorDao;
	}

	@Override
	public boolean insertRefrigerator(RefrigeratorVO refrigeratorVO) {
		return refrigeratorDao.insertRefrigerator(refrigeratorVO)>0;
	}

	@Override
	public List<RefrigeratorVO> readRefrigeratorAll(int member) {
		return refrigeratorDao.selectRefrigeratorAll(member);
	}

	@Override
	public boolean deleteRefrigerator(int refri) {
		return refrigeratorDao.deleteRefrigerator(refri)>0;
	}

}