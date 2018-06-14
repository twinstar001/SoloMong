package com.solomong.history.vo;

public class HistoryVO {
	private int histId;
	private String histDate;
	private String reqType;
	private String ip;
	private int userId;
	private int idType;
	private String log;
	private String asIs;
	private String toBe;
	private String referer;
	private String weather;
	
	
	public int getIdType() {
		return idType;
	}
	public void setIdType(int idType) {
		this.idType = idType;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getReferer() {
		return referer;
	}
	public void setReferer(String referer) {
		this.referer = referer;
	}
	public int getHistId() {
		return histId;
	}
	public void setHistId(int histId) {
		this.histId = histId;
	}
	public String getHistDate() {
		return histDate;
	}
	public void setHistDate(String histDate) {
		this.histDate = histDate;
	}
	public String getReqType() {
		return reqType;
	}
	public void setReqType(String reqType) {
		this.reqType = reqType;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getLog() {
		return log;
	}
	public void setLog(String log) {
		this.log = log;
	}
	public String getAsIs() {
		return asIs;
	}
	public void setAsIs(String asIs) {
		this.asIs = asIs;
	}
	public String getToBe() {
		return toBe;
	}
	public void setToBe(String toBe) {
		this.toBe = toBe;
	}
	
	
}
