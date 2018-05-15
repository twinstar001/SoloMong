package com.solomong.www.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value="/loginRegist" , method= RequestMethod.GET)
	public String viewLoginRegistPage() {
		return "member/loginRegist";
	}

}
