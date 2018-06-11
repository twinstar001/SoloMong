package com.solomong.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value="/loginRegist" , method= RequestMethod.GET)
	public String viewLoginRegistPage() {
		return "/loginTest";
	}
	
	@RequestMapping(value="loginRegist", method=RequestMethod.POST)
	public String doLogin(MemberVO member) {
		
		System.out.println(member.getMemberId() + " , " + member.getPassword());
		
		return "main";
	}
	
	@RequestMapping(value="/mypage" , method= RequestMethod.GET)
	public String viewMyPage() {
		return "member/mypage";
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
				session.setAttribute( Member.USER, member);
				System.out.println(member.toString());
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
					System.out.println(member.getMemberId());
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
		return "redirect:/main";
	}

}
