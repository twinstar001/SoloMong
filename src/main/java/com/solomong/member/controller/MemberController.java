package com.solomong.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.solomong.member.constants.Member;
import com.solomong.member.service.MemberService;
import com.solomong.member.vo.GoogleMemberVO;
import com.solomong.member.vo.KakaoMemberVO;
import com.solomong.member.vo.MemberVO;

@Controller
public class MemberController {
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value="/kakaoLogin" , method= RequestMethod.GET)
	public String viewLoginRegistPage() {
		return "/loginTest";
	}
	
	@RequestMapping(value="/mypage" , method= RequestMethod.GET)
	public String viewMyPage() {
		return "member/mypage";
	}
	
	@RequestMapping(value="/normalLogin", method=RequestMethod.POST)
	public String doNormalLogin(@ModelAttribute MemberVO memberVO, HttpSession session) {
		memberVO.setIdType(1);
		MemberVO member = memberService.readMember(memberVO);
		if(member == null) {
			session.setAttribute("loginResult", "fail");
			return "redirect:/modalTest";
		}
		else{
			session.setAttribute("loginResult", "success");
			session.setAttribute(Member.USER, member);
			return "redirect:/modalTest";
		}
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.POST)
	public String doSignUp(@ModelAttribute MemberVO memberVO, HttpSession session) {
		if( memberService.registNormalMember(memberVO) ) {
			return "redirect:/main";
		}
		return "redirect:/modalTest";
	}
	
	@RequestMapping("/api/isExist/userId")
	@ResponseBody
	public Map<String, Object> checkUniqueUserId(@RequestParam String userId){
		boolean isExist = memberService.isExistUserId(userId);
		
		Map<String, Object> response = new HashMap<>();
		response.put("isExist", isExist);
		return response;
	}
	
	@RequestMapping("/api/isExist/nickname")
	@ResponseBody
	public Map<String, Object> checkUniqueNickname(@RequestParam String nickname){
		boolean isExist = memberService.isExistNickname(nickname);
		
		Map<String, Object> response = new HashMap<>();
		response.put("isExist", isExist);
		return response;
	}
	
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.POST)
	@ResponseBody
	public String doKakaoLogin(HttpServletRequest request, HttpSession session) {
		KakaoMemberVO kakaoMemberVO = new KakaoMemberVO();
		MemberVO memberVO = new MemberVO();
		MemberVO member = new MemberVO();
		try {
			JSONParser jsonparser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonparser.parse(request.getParameter("res"));
			JSONObject kakaoAccount = (JSONObject) jsonObject.get("kakao_account");
			JSONObject properties = (JSONObject) jsonObject.get("properties");
			memberVO.setUserId(jsonObject.get("id").toString());
			memberVO.setIdType(2);
			member = memberService.readMember(memberVO); 
			if( member != null) {
				System.out.println(member.getIdType());
				session.setAttribute( Member.USER, member);
				return "success";
			}else {
				kakaoMemberVO.setId(Integer.parseInt(jsonObject.get("id").toString()));
				kakaoMemberVO.setIdType(2);
				kakaoMemberVO.setNickname(properties.get("nickname").toString());
				if(kakaoAccount.get("profile_image") != null) {
					kakaoMemberVO.setProfileImage(properties.get("profile_image").toString());				
				}
				if(kakaoAccount.get("email") != null) {				
					kakaoMemberVO.setEmail(kakaoAccount.get("email").toString());
				}
				if(kakaoAccount.get("gender") != null) {
					kakaoMemberVO.setGender(kakaoAccount.get("gender").toString());
				}
				if(kakaoAccount.get("birthday") != null) {
					kakaoMemberVO.setBirthday(kakaoAccount.get("birthday").toString());
				}
				if(memberService.registKakaoMember(kakaoMemberVO)) {
					member = memberService.readMember(memberVO);
					System.out.println(member.getEmail());
					System.out.println(member.getIdType());
					session.setAttribute( Member.USER, member);
					return "success";
				}else {
					return "fail";
				}
			}
		} catch (ParseException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
	}
	
	@RequestMapping(value="/googleLogin", method=RequestMethod.POST)
	@ResponseBody
	public String doGoogleLogin(HttpServletRequest request, HttpSession session) {
		System.out.println("call googleLogin");
		GoogleMemberVO googleMemberVO = new GoogleMemberVO();
		MemberVO memberVO = new MemberVO();
		MemberVO member = new MemberVO();
		try {
			JSONParser jsonparser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonparser.parse(request.getParameter("PG"));
			memberVO.setUserId(jsonObject.get("Eea").toString());
			memberVO.setIdType(3);
			member = memberService.readMember(memberVO);
			if( member != null ) {
				System.out.println( "member is not null");
				System.out.println("member = " + member.toString());
				session.setAttribute( Member.USER , member);
				return "success";
			}else {
				googleMemberVO.setName(jsonObject.get("ofa").toString());
				googleMemberVO.setEmail(jsonObject.get("U3").toString());
				googleMemberVO.setImageURL(jsonObject.get("Paa").toString());
				if(memberService.registGoogleMember(googleMemberVO)) {
					member = memberService.readMember(memberVO);
					session.setAttribute( Member.USER , member);
					return "success";
				}else {
					return "faile";
				}
			}
		} catch (ParseException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
	}
	
	@RequestMapping("/logout")
	public String doLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/modalTest";
	}

}
