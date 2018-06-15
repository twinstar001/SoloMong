package com.solomong.member.dao;

import com.solomong.member.vo.GoogleMemberVO;
import com.solomong.member.vo.KakaoMemberVO;
import com.solomong.member.vo.MemberVO;

public interface MemberDao {
	
	public MemberVO selectMember(MemberVO memberVO);
	
	public int countExistUserId(String userId);
	
	public int countExistNickname(String nickname);
	
	public int insertNormalMember(MemberVO memberVO);
	
	public int insertKakaoMember(KakaoMemberVO kakaoMemberVO);
	
	public int insertGoogleMember(GoogleMemberVO googleMemberVO);

}
