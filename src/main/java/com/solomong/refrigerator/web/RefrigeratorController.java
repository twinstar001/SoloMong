package com.solomong.refrigerator.web;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.solomong.ingredient.service.IngredientService;
import com.solomong.ingredient.vo.IngredientVO;
import com.solomong.member.contants.Member;
import com.solomong.refrigerator.service.RefrigeratorService;
import com.solomong.refrigerator.vo.RefrigeratorVO;
import com.solomong.Util.DateUtil;

@Controller
public class RefrigeratorController {
	
	private RefrigeratorService refrigeratorService;
	private IngredientService ingredientService;
	
	public void setRefrigeratorService(RefrigeratorService refrigeratorService) {
		this.refrigeratorService = refrigeratorService;
	}
	public void setIngredientService(IngredientService ingredientService) {
		this.ingredientService = ingredientService;
	}
	
	@RequestMapping("/refrigerator")
	public ModelAndView refrigeratorCalendar() {
		ModelAndView view = new ModelAndView();
		//int memberId = (int) session.getAttribute(Member.USER);
		int member = 1;
		
		List<RefrigeratorVO> refri = refrigeratorService.readRefrigeratorAll(member);
		
		view.addObject("refriList", refri);
		
		view.setViewName("/refrigerator/refrigeratorSchedule");
	
		return view;
	}
	
	@RequestMapping("/api/exists/ingredient")
	@ResponseBody
	public Map<String, Boolean> apiIsExistsIngredient(@RequestParam String name){
		//boolean isExist = ingredientService.isExistIngredient(name);
		
		boolean isExist = true;
		Map<String, Boolean> response = new HashMap<String, Boolean>();
		response.put("response", isExist);

		return response;
	}
	
	
	
	@RequestMapping("/refrigerator/write")
	public ModelAndView viewRefrigeratorWrite() {
		
		List<IngredientVO> ingredients = ingredientService.readIngredientNameAll();
		
		
		ModelAndView view = new ModelAndView();
		
		
		view.addObject("ingredients",ingredients);
		view.setViewName("/refrigerator/refrigeratorWrite");
		
		return view;
	}
	
	@RequestMapping("/refrigerator/writing/{name}/{date}")
	public String doRefrigeratorWrite(@PathVariable String name, @PathVariable String date, HttpSession session) {
		
		
		RefrigeratorVO refrigeratorVO = new RefrigeratorVO();
		//int memberId = (int) session.getAttribute(Member.USER);
		int memberId = 1;
		refrigeratorVO.setMemberId(memberId);
		
		
		String ingName = name;
		refrigeratorVO.setIngredientName(name);
		int ingId = ingredientService.readIngredientName(ingName);
		
		refrigeratorVO.setIngredientId(ingId);
		
		String exDate = date;
		refrigeratorVO.setRefrigeratorExpirationDate(exDate);
		
		int exYear = Integer.parseInt(exDate.split("-")[0]);
		int exMonth = Integer.parseInt(exDate.split("-")[1]);
		int exDay = Integer.parseInt(exDate.split("-")[2]);
		
		int add = ingredientService.readIngredientUsebyPeriod(ingId);
		
		String usebyDate = DateUtil.getComputeDate(exYear, exMonth, exDay, DateUtil.DATE, add);
		
		//INGREDIENTVO에서 사용기간 받아와서 EXDATE에 더해주고 REFRIGERATOR에 SET해주기
		
		refrigeratorVO.setRefrigeratorUseByDate(usebyDate);

		//refrigeratorVO.setRefrigeratorUseByDate("2017-02-03");
		
		boolean isSuccess = refrigeratorService.insertRefrigerator(refrigeratorVO);
		
		if(isSuccess) {
			return "redirect:/refrigerator/";
		}
		
		return "redirect:/refrigerator/";
		
	}
	
	@RequestMapping("/refrigerator/delete/{refrigeratorId}")
	public String doDeleteRefrigerator(@PathVariable int refrigeratorId) {
		
		boolean isDelete = refrigeratorService.deleteRefrigerator(refrigeratorId);
		
		if(isDelete) {
			return "redirect:/refrigerator";
		}
		else {
			return "redirect:/refrigerator";
		}
		
	}
	

}
