package com.solomong;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solomong.Util.location.IpToWeather;
import com.solomong.history.service.HistoryService;
import com.solomong.history.vo.HistoryVO;

@Controller
public class testController {
	private HistoryService historyService;
	
	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}
	
	@RequestMapping("/main")
	public String viewTest(HttpSession session, HttpServletRequest request,
			@RequestAttribute HistoryVO history) throws IOException {
		
//		history.
		
		return "main";
	}
	
	@RequestMapping("/main2")
	public String viewTest2(HttpSession session) {
		session.invalidate();
		return "template/topBar";
	}
	
	@RequestMapping("/modalTest")
	public String modalTest() {
		return "mainModal";
	}
	
	@RequestMapping("/carouselTest")
	public String carouselTest() {
		return "carouselTest";
	}
	@RequestMapping("/topBar")
	public String topBar() {
		return "template/topBar";
	}
	
	
	@RequestMapping("/list") 
		public String recipe() {
			return "recipe/list";
		}
	@RequestMapping("/detail") 
	public String recipeDetail() {
		return "recipe/detail";
	}
	
	@RequestMapping("/test")
	public String viewMainTest(HttpServletRequest request) {
		System.out.println("maintest call");
		System.out.println(request.getHeader("refer"));
		return "mainTest";
	}
	
	@RequestMapping("/kakaoTest")
	public String doKakaoLogin(HttpServletRequest request) {
		System.out.println("kakaoTest call");
		System.out.println(request.getHeader("refer"));
		
		return "redirect:/test";
	}
	
}
