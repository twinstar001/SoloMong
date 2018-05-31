package com.solomong.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solomong.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@RequestMapping(value="/kakaoLogin" , method= RequestMethod.GET)
	public String viewLoginRegistPage() {
		return "/loginTest";
	}
	
	@RequestMapping(value="/mypage" , method= RequestMethod.GET)
	public String viewMyPage() {
		return "member/mypage";
	}

}
