package com.solomong.board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.solomong.board.service.CommunityBoardService;

@Controller
public class CommunityBoardController {
	CommunityBoardService communityBoardService;
	
	public void setCommunityBoardService(CommunityBoardService communityBoardService) {
		this.communityBoardService = communityBoardService;
	}
	
	@RequestMapping(value= "/community/createboard", method = RequestMethod.GET)
	public String CommunityWritePage() {
		//TODO 
		// 작성 페이지로 이동.
		
		return "/community/write";
	}
	
	@RequestMapping(value= "/community/createboard", method = RequestMethod.POST)
	public ModelAndView doWriteBoard() {
		ModelAndView view = new ModelAndView();
		//입력 
		
		return view;
		
	}

}
