package com.solomong;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solomong.Util.location.Location;

@Controller
public class testController {
	
	@RequestMapping("/main")
	public String viewTest(HttpSession session, HttpServletRequest request) throws IOException {
		Location locationVO = new Location();
		
		if (session.getAttribute("SOLO_LOCATION") != null) {
			locationVO.setting( request.getRemoteAddr() );
			session.setAttribute("SOLO_LOCATION", locationVO);
		}else {
			locationVO.setting( request.getRemoteAddr() );
		}
		
		System.out.println( "접속위치: "+ locationVO.getLocation() );
		System.out.println( "접속지 날씨: "+ locationVO.getWeather() );
		System.out.println( "접속지 온도: "+ locationVO.getTmp() );
		
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
