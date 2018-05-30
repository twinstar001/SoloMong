package com.solomong.recipe.web;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solomong.recipe.service.RecipeService;

@Controller
public class RecipeController {

	private RecipeService recipeService;
	
	public void setRecipeService(RecipeService recipeService) {
		this.recipeService = recipeService;
	}
	
	
	@RequestMapping("/recipe")
	public void test() {
	
		try {
		    // 1. URL ?Ñ†?ñ∏
		    String connUrl = "http://emart.ssg.com/recipe/recipe/detail.ssg?recipeId=1";
		    // 2. HTML Í∞??†∏?ò§Í∏?
		    Document doc = Jsoup.connect(connUrl).get();
		    // 3. Í∞??†∏?ò® HTML Document Î•? ?ôï?ù∏?ïòÍ∏?
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
