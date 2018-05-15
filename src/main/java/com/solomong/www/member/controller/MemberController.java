package com.solomong.www.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solomong.www.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@RequestMapping(value="/loginRegist" , method= RequestMethod.GET)
	public String viewLoginRegistPage() {
		return "member/loginAndRegist";
	}
	
	@RequestMapping(value="loginRegist", method=RequestMethod.POST)
	public String doLogin(MemberVO member) {
		
		System.out.println(member.getMemberId() + " , " + member.getPassword());
		
		return "main";
	}

}
