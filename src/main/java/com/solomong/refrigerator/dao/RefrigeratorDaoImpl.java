package com.solomong.refrigerator.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.refrigerator.vo.RefrigeratorVO;

public class RefrigeratorDaoImpl extends SqlSessionDaoSupport implements RefrigeratorDao{

	@Override
	public int insertRefrigerator(RefrigeratorVO refrigeratorVO) {
		return getSqlSession().insert("RefrigeratorDao.insertRefrigerator", refrigeratorVO);
	}

	@Override
	public List<RefrigeratorVO> selectRefrigeratorAll(int member) {
		return getSqlSession().selectList("RefrigeratorDao.selectRefrigeratorAll", member);
	}

	@Override
	public int deleteRefrigerator(int refri) {
		return getSqlSession().delete("RefrigeratorDao.deleteRefrigerator", refri);
	}

}
