<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"> </script>
<script type="text/javascript">
	$().ready(function(){
		var scrollTop= $(this).scrollTop();
		<%//리모컨 초기 위치%>
		remocon_set();
		function remocon_set(){
			if( (location.href.indexOf('main') > -1) ){
				if(scrollTop < 700){
					document.getElementById('remocon_main').style.top = '500px';
				}else{
					document.getElementById('remocon_main').style.top = '80px';
				}
			}
		}
		
		
		<%//url에 'login'가 포함되 있으면 리모컨 레시피 부분 보이기.%>
	    if(location.href.indexOf('login') > -1){ 
	    	/* document.getElementById('remocon_recipe').style.display = 'show'; */
	    	$("#remocon_recipe").show();
    	}
	    
		
	    <%//스크롤 바에 따른 리모컨 위치 조정.%>
		$(window).scroll(function(){
			scrollTop= $(this).scrollTop();
			if(scrollTop < 700){
				document.getElementById('remocon_main').style.top = '500px';
			}else{
				document.getElementById('remocon_main').style.top = '80px';
			}
		});
		
	    <%//리모컨 클릭 시, 실행.%>
		$(".remocon").click(function(event){
			
			var navEvent = event.target.innerHTML;
			<%//로고 클릭시%>
			if(!navEvent){
				location.href = "/SoloMong/test";
			}
			<%//'만개 레시피' 클릭시%>
			else if(navEvent == "만개 레시피"){
				$("#rightBody").load("<c:url value="/SoloMong/main"/>");
			}
			else if(navEvent == "커뮤니티"){
				/* $("#rightBody").load("<c:url value="/rightbody"/>"); */
			}
			else if(navEvent == "로그인"){
				location.replace("/SoloMong/loginRegist"); 
			}
		});
		
	});	

</script>

<style type="text/css">
	#remocon_main{
		background-color:#000000;
		opacity: 0.7;
		z-index: 100;
		position: fixed;
		top:80px;
		right:10px;
	}
	.remocon ul {	
		list-style-type:none;
		background-color:#000000;
		padding:1px 5px 5px 1px;
		float:right;
	}
	.remocon ul li {
		margin-left:2px;
		color:#ffffff;
		font-size:9pt;
	}
	.remocon ul li:first-child {
		border-left: none;
	}
	.remocon div {
		text-decoration:none;
		color:#ffffff;
		cursor: pointer;
			
	}
	.remocon div:hover {
		color:#D4F4FA;
		border-bottom:3px solid yellow;
	}
	
	.remocon_ul {
		position: fixed;
		top:80px;
		right:0px;
		list-style-type:none;
		background-color:#000000;
		padding:1px 5px 5px 1px;
		float:right;
	}
	#remocon_recipe{
		display: none;
	}
</style>

<div id="remocon_main">
	<div class="remocon">
		<ul>
			<li><div style="text-align:center"><img src="/static/img/elements/solo.PNG" width="20px" height="20px" alt="home"/></div></li>
			<li><div>만개 레시피</div></li>
			<li><div>나만의 레시피</div></li>
			<li><div>나만의 꿀팁</div></li>
			<li><div>QnA</div></li>
			<li><div>자유게시판</div></li>
			<li><div>로그인</div></li>
		</ul>
	</div>
	<div id="remocon_recipe">
		<div>바로 가기</div>
		<div class="remocon">
			<ul>
				<li><div><a href="#">레시피</a></div></li>
				<li><div><a href="#">조리 과정</a></div></li>
				<li><div><a href="#">재료 상품</a></div></li>
				<li><div><a href="#">추천 요리</a></div></li>
			</ul>
		</div>
	</div>
</div>
