package com.solomong;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping("/main")
	public String viewTest() {
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
	
}
