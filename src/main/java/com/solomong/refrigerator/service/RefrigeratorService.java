package com.solomong.refrigerator.service;

import java.util.List;

import com.solomong.refrigerator.vo.RefrigeratorVO;

public interface RefrigeratorService {

	public boolean insertRefrigerator(RefrigeratorVO refrigeratorVO);
	public List<RefrigeratorVO> readRefrigeratorAll(int member);
	public boolean deleteRefrigerator(int refri);

}
