package com.solomong.recipe.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.solomong.recipe.service.RecipeService;
import com.solomong.recipe.vo.RecipeVO;

@Controller
public class RecipeController {

	private RecipeService recipeService;
	
	public void setRecipeService(RecipeService recipeService) {
		this.recipeService = recipeService;
	}
	
	
	@RequestMapping("/recipe")
	public ModelAndView test() {
		
		RecipeVO recipeVO = new RecipeVO();
	
		try {
			    // 1. URL 선언
			    String connUrl = "http://emart.ssg.com/recipe/recipe/detail.ssg?recipeId=102759";

			    if(connUrl != null) {
				    // 2. HTML 가져오기
				    Document doc = Jsoup.connect(connUrl).header("referer", "http://emart.ssg.com").userAgent("Mozilla").get();
				    // 3. 가져온 HTML Document 를 확인하기
				    //System.out.println(doc.toString());
				    //System.out.println(doc.select(".post_subject").first());
				    //System.out.println(doc.select(".txt_info"));
				        
				    
				    Elements dscs = doc.select(".food_subtit");
				    Elements btns = doc.select(".food_subtit").next().tagName("ul");
				    
				    //Elements btn = btns.get(0).select(".btn_hash");
				    
//				    for(Element bt : btn) {
//				    	System.out.println(bt.text());
//				    }
				    
//				    Elements btns = doc.select(".food_subtit").next().tagName("ul");
//				    for(Element btn : btns) {
//				    	System.out.println(btn);
//				    }
//				    System.out.println(
//				    		doc.select(".food_subtit").next().first().tagName("li").text());
				    				    
				    //System.out.println(doc.select(".food_subtit").text());
				    //List<String> btns = dscs.next().tagName("li").eachText();
				    for(int i = 0; i < dscs.size(); i++) {		
				    	System.out.println("섭타 : " + dscs.get(i).text());
				    	Elements btn = btns.get(i).select(".btn_hash");
				    	for(int j = 0; j < btn.size(); j++) {				    		
				    		System.out.println("재료 : " + btn.get(j).text());		    		
				    	}
				    }
				   

				    
				    recipeVO.setBody(doc.select(".dsc").eachText());
				    recipeVO.setTitle(doc.select(".post_subject").text());
				    recipeVO.setUserId(doc.select(".txt_info").last().text());
				    recipeVO.setWriteDate(doc.select(".txt_info").first().text());
				    
				    Elements recipes = doc.select(".thumb_nail");
				    List<String> dummy = new ArrayList<String>();
				    
				    for(Element recipe : recipes) {
				    	dummy.add(recipe.children().toString());
				    }
				    
				    recipeVO.setBodyImg(dummy);
				    
				    recipes = doc.select(".img_slide");
				    dummy.clear();
				    
				    for(Element recipe : recipes) {
				    	dummy.add(recipe.children().toString());
				    }
				    
				    recipeVO.setSlideImg(dummy);
				    
				  
				    
				    Elements recipeInfos = doc.select(".info_txt");
				    //System.out.println("난이도"+recipeInfos.get(0).text());
				   // System.out.println("난이도"+recipeInfos.get(1).text());
				   // System.out.println("난이도"+recipeInfos.get(2).text());
				    recipeVO.setLevel(recipeInfos.get(0).text());
				    recipeVO.setTime(recipeInfos.get(1).text());
				    recipeVO.setPeople(recipeInfos.get(2).text());
				    
				    //System.out.println("난이도"+recipeVO.getLevel());
				    //System.out.println("시간"+recipeVO.getTime());
//				    Elements ings = doc.select(".img_slide");
//				    for(Element ing : ings) {
//				    	System.out.println(ing.children().toString());
//				    	//recipeService.putIngredient(ing.text());
//				    }
				    
				    //System.out.println(doc.select("button").attr("data-youtube-code"));
				    recipeVO.setYoutubeLink(doc.select("button").attr("data-youtube-code"));
			    
			    
			    }			
		} catch (IOException e) {
		    // Exp : Connection Fail
		    e.printStackTrace();
		}
		
		ModelAndView view = new ModelAndView();
		
		view.setViewName("recipe/recipetest");
		view.addObject("recipe", recipeVO);
		
		return view;

	}
	
}
