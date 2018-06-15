package com.solomong.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.solomong.history.service.HistoryService;
import com.solomong.history.vo.History;
import com.solomong.history.vo.HistoryVO;
import com.solomong.member.constants.Member;
import com.solomong.member.vo.MemberVO;
import com.solomong.util.location.IpToWeather;

public class locationInterceptor extends HandlerInterceptorAdapter {
	
	private HistoryVO history;
	private HistoryService historyService;
	
	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		IpToWeather locationVO = new IpToWeather();
		
		if (request.getSession().getAttribute("SOLO_LOCATION") == null) {
			locationVO.setting( request.getRemoteAddr() );
			request.getSession().setAttribute("SOLO_LOCATION", locationVO);
		}else {
			locationVO= (IpToWeather) request.getSession().getAttribute("SOLO_LOCATION");
		}
		
		System.out.println( "접속위치: "+ locationVO.getLocation() );
		System.out.println( "접속지 날씨: "+ locationVO.getWeather() );
		System.out.println( "접속지 온도: "+ locationVO.getTmp() );
		
		
		//이전 페이지 주소
		String referer = request.getHeader("referer");
		//현재 페이지 주소
		String connectUrl = request.getRequestURL().toString();
		
		System.out.println("referer: "+referer);
		System.out.println("현재URL: "+ connectUrl);
		
		
		HistoryVO history = new HistoryVO();
		history.setReqType(History.ReqType.VIEW);
		history.setIp(request.getRemoteAddr());
		if(request.getAttribute(Member.USER) != null) {
			MemberVO member = (MemberVO) request.getAttribute(Member.USER);
			history.setUserId( member.getMemberId() );
			history.setIdType( member.getIdType() );
		}
		if(referer != null) {
			history.setReferer(referer);
		}else {
			history.setReferer("");
		}
		history.setWeather( locationVO.getWeather() );
		history.setAsIs("");
		history.setToBe("");
		
		String log= String.format(History.Log.VIEW, request.getRequestURI(),request.getMethod());
		history.setLog(log);
		
		historyService.createHistory(history);
		
		
		
		//로그
		history= new HistoryVO();
		history.setIp( request.getRemoteAddr() );
		history.setWeather( locationVO.getWeather() );
		request.setAttribute("history", history);
		
		return true;
		
	}

}
