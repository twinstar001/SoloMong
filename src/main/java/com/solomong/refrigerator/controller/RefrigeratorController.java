package com.solomong.refrigerator.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RefrigeratorController {
	
	@RequestMapping("/refrigerator")
	public ModelAndView RefrigeratorCalendar() {
		ModelAndView view = new ModelAndView();
		
		Map<String, String> schedules = new HashMap<>();
		
		schedules.put("event1", "2018-05-01");
		schedules.put("event2", "2018-05-06");
		
		view.addObject("schedules", schedules);
		
		view.setViewName("/refrigerator/refrigeratorSchedule");
	
		return view;
	}
	

}
