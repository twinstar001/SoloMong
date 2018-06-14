package com.solomong.recipe.vo;

import java.util.List;

import org.jsoup.nodes.Element;

public class RecipeVO {
	private int id;
	private String title;
	private List<String> body;
	private List<String> bodyImg;
	private String writeDate;
	private String userId;
	private int recommendCount;
	private int viewCount;
	private String level;
	private String time;
	private String people;
	private List<String> slideImg;
	private String youtubeLink;
	
	
	
	/**
	 * @return the youtubeLink
	 */
	public String getYoutubeLink() {
		return youtubeLink;
	}
	/**
	 * @param youtubeLink the youtubeLink to set
	 */
	public void setYoutubeLink(String youtubeLink) {
		this.youtubeLink = youtubeLink;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the body
	 */
	public List<String> getBody() {
		return body;
	}
	/**
	 * @param body the body to set
	 */
	public void setBody(List<String> body) {
		this.body = body;
	}
	/**
	 * @return the bodyImg
	 */
	public List<String> getBodyImg() {
		return bodyImg;
	}
	/**
	 * @param bodyImg the bodyImg to set
	 */
	public void setBodyImg(List<String> bodyImg) {
		this.bodyImg = bodyImg;
	}
	/**
	 * @return the writeDate
	 */
	public String getWriteDate() {
		return writeDate;
	}
	/**
	 * @param writeDate the writeDate to set
	 */
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the recommendCount
	 */
	public int getRecommendCount() {
		return recommendCount;
	}
	/**
	 * @param recommendCount the recommendCount to set
	 */
	public void setRecommendCount(int recommendCount) {
		this.recommendCount = recommendCount;
	}
	/**
	 * @return the viewCount
	 */
	public int getViewCount() {
		return viewCount;
	}
	/**
	 * @param viewCount the viewCount to set
	 */
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	/**
	 * @return the level
	 */
	public String getLevel() {
		return level;
	}
	/**
	 * @param level the level to set
	 */
	public void setLevel(String level) {
		this.level = level;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the people
	 */
	public String getPeople() {
		return people;
	}
	/**
	 * @param people the people to set
	 */
	public void setPeople(String people) {
		this.people = people;
	}
	/**
	 * @return the slideImg
	 */
	public List<String> getSlideImg() {
		return slideImg;
	}
	/**
	 * @param slideImg the slideImg to set
	 */
	public void setSlideImg(List<String> slideImg) {
		this.slideImg = slideImg;
	}
	
	
	
	
	
}
