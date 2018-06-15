package com.solomong.member.service;

import com.solomong.member.vo.GoogleMemberVO;
import com.solomong.member.vo.KakaoMemberVO;
import com.solomong.member.vo.MemberVO;

public interface MemberService {

	public MemberVO readMember(MemberVO memberVO);
	
	public boolean isExistUserId(String userId);
	
	public boolean isExistNickname(String nickname);
	
	public boolean registNormalMember(MemberVO memberVO);

	public boolean registKakaoMember(KakaoMemberVO kakaoMemberVO);

	public boolean registGoogleMember(GoogleMemberVO googleMemberVO);

}
