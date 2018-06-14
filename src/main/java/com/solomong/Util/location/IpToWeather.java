package com.solomong.util.location;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class IpToWeather {
	private String location;
	private String ipAddr;
	private int gridX;
	private int gridY;
	private String weather;
	private String tmp;
	
	public String getTmp() {
		return tmp;
	}
	public void setTmp(String tmp) {
		this.tmp = tmp;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getIpAddr() {
		return ipAddr;
	}
	public void setIpAddr(String ipAddr) {
		this.ipAddr = ipAddr;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public int getGridX() {
		return gridX;
	}
	public void setGridX(int gridX) {
		this.gridX = gridX;
	}
	public int getGridY() {
		return gridY;
	}
	public void setGridY(int gridY) {
		this.gridY = gridY;
	}
	
	public void setting(String ip) throws IOException {
		this.ipAddr = ip;
		if(this.ipAddr.equals("0:0:0:0:0:0:0:1")) {
			this.ipAddr="192.168.201.18";
		}
		IpForGPS(ip);
		locationWeather(this.gridX, this.gridY);
	}

//	ip -> 지역명, 위도, 경도
	public void IpForGPS(String ip) throws IOException {
		Document doc = Jsoup.connect("http://www.iplocation.net/search?cx=partner-pub-1026064395378929%3A2796854705&cof=FORID%3A10&ie=UTF-8&q="+ipAddr).get();
		Elements needData = doc.select(".col_12_of_12 > table > tbody");
		
		
		Elements locationTableTd= needData.get(0).select("tr > td");
		if( locationTableTd.get(3).text() != null ) {
			this.location= locationTableTd.get(3).text();
		}	
		
		Elements gpsTableTd= needData.get(1).select("tr > td");
		if( gpsTableTd.get(2).toString() != null && gpsTableTd.get(3).toString() != null ) {
			setGrid(gpsTableTd.get(2).text(), gpsTableTd.get(3).text());
		}
	}


	
//	위도, 경도 -> gridXY
    public void setGrid( String element, String element2) throws IOException {
   	 //----------------------------------------------------------
        // 기상청 홈페이지에서 발췌한 변환 함수
        //
        // LCC DFS 좌표변환을 위한 기초 자료
        //
    	final Double RE = 6371.00877; // 지구 반경(km)
    	final Double GRID = 5.0; // 격자 간격(km)
    	final Double SLAT1 = 30.0; // 투영 위도1(degree)
    	final Double SLAT2 = 60.0; // 투영 위도2(degree)
    	final Double OLON = 126.0; // 기준점 경도(degree)
    	final Double OLAT = 38.0; // 기준점 위도(degree)
    	final Double XO = 43.0; // 기준점 X좌표(GRID)
    	final Double YO = 136.0; // 기1준점 Y좌표(GRID)
        
    	Double DEGRAD = Math.PI / 180.0;
        
    	Double re = RE / GRID;
    	Double slat1 = SLAT1 * DEGRAD;
    	Double slat2 = SLAT2 * DEGRAD;
    	Double olon = OLON * DEGRAD;
    	Double olat = OLAT * DEGRAD;
        
        Double sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
        Double sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
        
        Double lat = Double.parseDouble(element);
        Double lng = Double.parseDouble(element2);
        
        Double ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
        ro = re * sf / Math.pow(ro, sn);
        Double ra = Math.tan(Math.PI * 0.25 + (lat) * DEGRAD * 0.5);
        ra = re * sf / Math.pow(ra, sn);
        Double theta = lng * DEGRAD - olon;
        
        if (theta > Math.PI) theta -= 2.0 * Math.PI;
        if (theta < -Math.PI) theta += 2.0 * Math.PI;
        theta *= sn;
        this.gridX = (int) Math.floor(ra * Math.sin(theta) + XO + 0.5);
        this.gridY = (int) Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
    }
	
//	gridXY -> 날씨/온도/
    public void locationWeather(int gridX, int gridY) throws IOException {
    	Document doc = Jsoup.connect("http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+ gridX +"&gridy="+gridY).get();
    	
    	if( doc != null ) {
	    	Element searchDiv = doc.select("data").get(0);
	    	if( searchDiv.select("temp").get(0).text() != null) {
	    		this.tmp= searchDiv.select("temp").get(0).text();
	    	}else {
	    		this.tmp = null;
	    	}
	    	if( searchDiv.select("wfKor").text() != null ) {
	    		this.weather= searchDiv.select("wfKor").text();
	    	}else if( searchDiv.select("wfEn").text() != null ) {
	    		this.weather= searchDiv.select("wfEn").text();
	    	}
	    	else{
	    		this.weather= null;
	    	}
    	}else {
    		this.tmp = null;
    		this.weather= null;
    	}
    }
    
}
