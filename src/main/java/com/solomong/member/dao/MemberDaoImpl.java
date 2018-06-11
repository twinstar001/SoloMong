package com.solomong.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.solomong.member.vo.GoogleMemberVO;
import com.solomong.member.vo.KakaoMemberVO;
import com.solomong.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public int insertKakaoMember(KakaoMemberVO kakaoMemberVO) {
		return getSqlSession().insert("MemberDao.insertKakaoMember", kakaoMemberVO);
	}
	
	@Override
	public int insertGoogleMember(GoogleMemberVO googleMemberVO) {
		return getSqlSession().insert("MemberDao.insertGoogleMember", googleMemberVO);
	}

	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		return getSqlSession().selectOne("MemberDao.selectMember", memberVO);
	}
}
