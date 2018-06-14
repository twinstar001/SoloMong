package com.solomong.refrigerator.dao;

import java.util.List;

import com.solomong.refrigerator.vo.RefrigeratorVO;

public interface RefrigeratorDao {

	public int insertRefrigerator(RefrigeratorVO refrigeratorVO);
	public List<RefrigeratorVO> selectRefrigeratorAll(int member);
	public int deleteRefrigerator(int refri);

}
