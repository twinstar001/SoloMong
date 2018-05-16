package com.solomong.www;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping("/main")
	public String viewTest() {
		return "main";
	}
	
	@RequestMapping("/list") 
		public String recipe() {
			return "recipe/list";
		}
	@RequestMapping("/detail") 
	public String recipeDetail() {
		return "recipe/detail";
	}
	
}
