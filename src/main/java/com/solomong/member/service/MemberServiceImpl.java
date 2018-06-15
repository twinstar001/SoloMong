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
	public boolean isExistUserId(String userId) {
		return memberDao.countExistUserId(userId) > 0;
	}

	@Override
	public boolean isExistNickname(String nickname) {
		return memberDao.countExistNickname(nickname) > 0;
	}
	
	@Override
	public boolean registNormalMember(MemberVO memberVO) {
		return memberDao.insertNormalMember(memberVO) > 0;
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
