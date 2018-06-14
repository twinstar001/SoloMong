package com.solomong;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solomong.member.constants.Member;
import com.solomong.member.vo.MemberVO;

@Controller
public class testController {
	
	@RequestMapping("/main")
	public String viewTest(HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute(Member.USER);
		if(member != null) {
			System.out.println( member.getEmail());
		}
		return "main";
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
