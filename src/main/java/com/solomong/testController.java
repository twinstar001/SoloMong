package com.solomong;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping("/main")
	public String viewTest() {
		return "main";
	}
	
	@RequestMapping("/recipe") 
		public String recipe() {
			return "recipe";
		}
	
}
