package com.solomong.recipe.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	
	@RequestMapping("/recipe/{id}")
	public ModelAndView viewRecipeDetail(@PathVariable int id) {
	
		ModelAndView view = new ModelAndView();
		
		RecipeVO recipeVO = recipeService.readOneRecipe(id);
		
		view.addObject("recipe", recipeVO);
		view.setViewName("recipe/detail");
		
		return view;

	}
	
	@RequestMapping("/recipeList")
	public ModelAndView viewRecipeList() {
	
		ModelAndView view = new ModelAndView();
		
		List<RecipeVO> recipeList = recipeService.realAllRecipe();
		
		for(int i=0; i < recipeList.size(); i++) {
			int id = recipeList.get(i).getId();
			List<String> slideImg = recipeService.readSlideImg(id);
			recipeList.get(i).setSlideImg(slideImg);			
		}
		
		view.addObject("recipeList", recipeList);
		view.setViewName("recipe/list");
		
		return view;

	}
	
	
}
