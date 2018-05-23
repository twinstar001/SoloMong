<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">

	$().ready(function(){
		
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('801fb68ee415f57ecbb8729f5d28e707');
		Kakao.API.request({
			url : '/v1/user/me',
			success:function(res){
				console.log("good");
				console.log(res);
			},
			fail : function(err){
				console.log("fail");
				console.log(JSON.stringify(err));
			}
		})
	    // 카카오 로그인 버튼을 생성합니다.
	    Kakao.Auth.createLoginButton({
	      container: '#kakao-login-btn',
	      success: function(authObj) {
	        console.log(JSON.stringify(authObj));
	        var access_token = authObj.access_token;
	        Kakao.Auth.setAccessToken(access_token);
    		console.log(access_token);
    		console.log("저장된토큰");
    		console.log(Kakao.Auth.getAccessToken());
	        Kakao.API.request({
	        	url : '/v1/user/me',
	        	success: function(res){
	        		console.log(res);
	        	},
	        	fail: function(err) {
	        		console.log(JSON.stringify(err));
	        	}
	        });
	      },
	      fail: function(err) {
	         console.log(JSON.stringify(err));
	      }
	    });
	    
	    $("#kakao-logout-btn").click(function(){
	    	Kakao.Auth.logout();
	    	console.log("logout");
	    })
	    
		$("#normalLoginBtn").click(function(){
			var invalid = false;
			
			if($("#memberId").val() == ""){
				$("#memberId").after("<div> 아이디를 입력하세요. </div>");
				invalid = true;
			}
			if($("#password").val() == ""){
				$("#password").after("<div> 비밀번호를 입력하세요. </div>");
				invalid = true;
			}
			
			if(invalid == false){
				$("#loginForm").attr({
					"method" : "post",
					"action" : "<c:url value='/login' />" 
				}).submit();
			}
		})
	});

</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/template/remocon.jsp" />	
	<div id="wrapper">
		<div>
			<form id="loginForm">
				<div>아이디 : <input type="text" name="memberId" id="memberId"></div>
				<div>비밀번호 : <input type="password" name="password" id="password"></div>
			</form>
		</div>
		<div><input type="button" id="normalLoginBtn" value="로그인"></div>
		<div><a id="kakao-login-btn"></a></div>
		<div><a id="kakao-logout-btn">로그아웃</a></div>
		
	</div>

</body>
</html>