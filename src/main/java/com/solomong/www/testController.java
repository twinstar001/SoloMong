package com.solomong.www;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping("/test")
	public String viewTest() {
		return "test";
	}

}
