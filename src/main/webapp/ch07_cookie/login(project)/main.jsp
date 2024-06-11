<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 전송 파라미터 얻기
    	//String id = request.getParameter("id");
    
    	// 쿠키 읽어서 userName 되어 있는 쿠키 찾고 그 쿠키의 이름을 가지고 온다.
    	// request에서 쿠키 얻어내기
    	Cookie[] cookies = request.getCookies();
    	String userName = "손님";
    	
    	if(cookies != null){
    		for(Cookie cookie: cookies){
    			if(cookie.getName().equals("userName")){
    				userName = URLDecoder.decode(cookie.getValue(), "utf-8");
    				break; // 반복문 탈출
    			}
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
	<h3><%= userName %>님 여기는 메인페이지입니다.</h3>
	<br>
	<%
		if(!userName.equals("손님")){
	%>
		<button id="btnLogout">로그아웃</button>
	<%
		}else{
	%>
		<button id="btnLogin">로그인</button>
	<%
		}
	%>
	
	<script>
		// 로그인 버튼을 선택
		const loginButton = document.querySelector("#btnLogin");
		if(loginButton) {
			// 로그인 버튼 클릭 시 loginForm.jsp로 이동
			loginButton.addEventListener("click", function() {
				window.location.href = "loginForm.jsp";	
			});
		}
		
		// 로그아웃 버튼을 선택
		const logoutButton = document.querySelector("#btnLogout");
		if(logoutButton) {
			// 로그아웃 버튼 클릭 시 logoutForm.jsp로 이동
			logoutButton.addEventListener("click", function() {
				window.location.href = "logoutForm.jsp";
			});
		}
		/*  const id, const id 이렇게 해서 쓰면 const를 
			두 번 선언하고 있어서 오류가 생김 따라서 저렇게 해서 
			두개의 변수를 줘서 해야함. */
	</script>
</body>
</html>