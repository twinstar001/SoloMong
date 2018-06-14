package com.solomong.myrecipe.web;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.solomong.community.vo.CommunityVO;
import com.solomong.myrecipe.service.MyrecipeService;
import com.solomong.myrecipe.util.DownloadUtil;
import com.solomong.myrecipe.vo.MyrecipeVO;

@Controller
public class MyrecipeController {

	private MyrecipeService myrecipeService;
	
	
	public MyrecipeService getMyrecipeService() {
		return myrecipeService;
	}

	public void setMyrecipeService(MyrecipeService myrecipeService) {
		this.myrecipeService = myrecipeService;
	}

	@RequestMapping(value="/myrecipe/write", method = RequestMethod.GET)
		public String myrecipeWrite() {
		
		return "myrecipe/write";
		
	}
	
	@RequestMapping(value="/myrecipe/write", method = RequestMethod.POST)
	 	ModelAndView doWrite(@ModelAttribute("writeForm") 
	 		@Valid MyrecipeVO myrecipeVO, Errors errors, HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		System.out.println("/myrecipe/write (Post)");	
			
		if(errors.hasErrors()) {
			view.setViewName("myrecipe/write"); 
			view.addObject("myrecipeVO", myrecipeVO);
			
			return view;
		}
		
		System.out.println(myrecipeVO.getFile().toString());
		System.out.println("세이브");
		
		myrecipeVO.save();
		
		boolean isSuccess2 = myrecipeService.createIngredient(myrecipeVO);
		//boolean isSuccess = myrecipeService.createStep(myrecipeVO);
		if(isSuccess2 ) {
			return new ModelAndView("redirect:/myrecipe/detail");
		}
		return new ModelAndView("redirect:/myrecipe/write");
		
	}

	@RequestMapping("/myrecipe/detail")
	public ModelAndView communityList() {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("myrecipe/detail");
		
		List<MyrecipeVO> myrecipeList = myrecipeService.getAll();
		List<MyrecipeVO> myrecipeList2 = myrecipeService.getImage();
		myrecipeList2.stream().forEach(a -> {
			System.out.println(a.getImageId());
		});
		
		//test
		
		
		//
		
		//System.out.println("" + myrecipeList.get(1).getIngredient() + myrecipeList.get(1).getSeasoning());
		
		view.addObject("myrecipeList", myrecipeList);
		
		//test
		view.addObject("myrecipeList2", myrecipeList2);
		
		
		return view;
}
	
	@RequestMapping("/get/{id}")
	public void download( @PathVariable int id , HttpServletRequest request, HttpServletResponse response, @Valid MyrecipeVO myrecipeVO) {
		//List<MyrecipeVO> myrecipeList2 = myrecipeService.getImage();
		MyrecipeVO test = myrecipeService.getOne(id);
		String filename = test.getImage();
		
		DownloadUtil download = new DownloadUtil("D:/image/" + filename);
		try {
			download.download(request, response, filename);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e.getMessage(), e);   //이렇게 하면 실무가면 감탄
		}
		
		
	}
	
}
