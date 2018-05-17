package com.solomong.www.recipe.web;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solomong.www.recipe.service.RecipeService;

@Controller
public class RecipeController {

	private RecipeService recipeService;
	
	public void setRecipeService(RecipeService recipeService) {
		this.recipeService = recipeService;
	}
	
	
	@RequestMapping("/recipe")
	public void test() {
	
		try {
		    // 1. URL 선언
		    String connUrl = "http://emart.ssg.com/recipe/recipe/detail.ssg?recipeId=1";
		    // 2. HTML 가져오기
		    Document doc = Jsoup.connect(connUrl).get();
		    // 3. 가져온 HTML Document 를 확인하기
		    //System.out.println(doc.toString());
		    //System.out.println(doc.select(".post_subject").first());
		    //System.out.println(doc.select(".txt_info"));
		    //Elements infos = doc.select(".txt_info");
		   // for(Element info : infos) {
		   // 	System.out.println(info.text());
		    //}
		    
		    Elements ings = doc.select(".btn_hash");
		    for(Element ing : ings) {
		    	System.out.println(ing.text());
		    	recipeService.putIngredient(ing.text());
		    }
		} catch (IOException e) {
		    // Exp : Connection Fail
		    e.printStackTrace();
		}

	}
	
}
