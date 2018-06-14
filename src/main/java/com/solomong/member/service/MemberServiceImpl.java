package com.solomong.member.service;

import com.solomong.member.dao.MemberDao;
import com.solomong.member.vo.GoogleMemberVO;
import com.solomong.member.vo.KakaoMemberVO;
import com.solomong.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService{
	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public boolean registKakaoMember(KakaoMemberVO kakaoMemberVO) {
		return memberDao.insertKakaoMember(kakaoMemberVO) > 0;
	}
	
	@Override
	public boolean registGoogleMember(GoogleMemberVO googleMemberVO) {
		return memberDao.insertGoogleMember(googleMemberVO) > 0;
	}

	@Override
	public MemberVO readMember(MemberVO memberVO) {
		return memberDao.selectMember(memberVO);
	}

}
