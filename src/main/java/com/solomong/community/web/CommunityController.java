package com.solomong.community.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.solomong.community.service.CommunityService;
import com.solomong.community.vo.CommunityVO;

@Controller
public class CommunityController {

	private CommunityService communityService;
	
	public CommunityService getCommunityService() {
		return communityService;
	}

	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}

	@RequestMapping("/community/list")
		public ModelAndView communityList() {
		
			ModelAndView view = new ModelAndView();
			view.setViewName("community/list");
			
			List<CommunityVO> communityList = communityService.getAll();
			view.addObject("communityList", communityList);
			
			return view;
	}
	@RequestMapping("/modalTest")
	public ModelAndView modal() {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("mainModal");
		
		List<CommunityVO> communityList = communityService.getAll();
		view.addObject("communityList", communityList);
		
		return view;
	}
	
	
	@RequestMapping(value="/community/write", method = RequestMethod.GET)
		public String communityWrite() {
		
		return "community/write";
		
	}
	
	@RequestMapping(value="/community/write", method = RequestMethod.POST)
	 	ModelAndView doWrite(@ModelAttribute("writeForm") 
	 		@Valid CommunityVO communityVO, Errors errors, HttpServletRequest request) {
		if(errors.hasErrors()) {
			ModelAndView view = new ModelAndView();
			view.setViewName("community/write");
			view.addObject("communityVO", communityVO);
			return view;
		}
		
		boolean isSuccess = communityService.createCommunity(communityVO);
		
		if( isSuccess ) {
			return new ModelAndView("redirect:/community/list");
		}
		return new ModelAndView("redirect:/community/write");
	}

	@RequestMapping("/community/view/{id}")
	public ModelAndView communityView(@PathVariable int id) {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("/community/view");
		
		CommunityVO community = communityService.getOne(id);
		view.addObject("community", community);
		
		return view;
	}
	
	@RequestMapping("/community/read/{id}")
	public String viewCount(@PathVariable int id) {
		if(communityService.increaseV(id)) { 
			return "redirect:/community/view/" + id;
		}
		return "redirect:/community"; 
	}
	
	@RequestMapping("/community/recommend/{id}")
	public String rCount(@PathVariable int id) {
		communityService.increaseR(id);
		return "redirect:/community/view/" + id; 
	}
	
	@RequestMapping(value = "/community/modify/{id}", method = RequestMethod.GET)
	public ModelAndView viewModifyPage(@PathVariable int id, HttpSession session) {
		
		CommunityVO community = communityService.getOne(id);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("community/write");
		view.addObject("communityVO", community);
		view.addObject("mode", "modify");
		
		return view;
	}
	
	@RequestMapping(value = "/community/modify/{id}", method = RequestMethod.POST)
	public String doModifyAction(@PathVariable int id, 
			HttpSession session, HttpServletRequest request, 
			@ModelAttribute("writeForm") 
			@Valid CommunityVO communityVO, 
			Errors errors) {
		
		CommunityVO originalVO = communityService.getOne(id);
		if (errors.hasErrors()) {
			return "redirect:/community/modify/" + id;
		}
		
		CommunityVO newCommunity = new CommunityVO();
		newCommunity.setId(originalVO.getId());
		
		boolean isModify = false;

		
		// 2. 제목 변경확인
		if(!originalVO.getTitle().equals(communityVO.getTitle())) {
			newCommunity.setTitle(communityVO.getTitle());
			isModify = true;
		}
		 
		// 3. 내용 변경확인
		if(!originalVO.getBody().equals(communityVO.getBody())) {
			newCommunity.setBody(communityVO.getBody());
			isModify = true;
		}
		

		// 5. 변경이 없는지 확인
		if(isModify) {
			// 6. UPDATE 하는 Service code 호출
			communityService.updateCommunity(newCommunity);
			
		}
		
		
		return "redirect:/community/view/" +id;
	}
	
	
	
	@RequestMapping("/community/delete/{id}")
	public String deletePage(@PathVariable int id, HttpSession session) {
	
		//MemberVO member = (MemberVO) session.getAttribute(Member.USER);   // 명시적
		
		//CommunityVO community = communityService.getOne(id);
		
		//boolean isMyCommunity = member.getId() == community.getUserId();
		
		communityService.removePage(id);    // 가장 기본적인 보안 방식    로그인 구현 후  isMyCommunity 추가
			
			return "redirect:/community/list";
	}
	
	
}
