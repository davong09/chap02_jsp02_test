<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String title = request.getParameter("title");
		String artist = request.getParameter("artist");
		String releaseYear = request.getParameter("releaseYear");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieDetail.jsp</title>
</head>
<body>
	<h3>영화 상세 정보</h3>
	<p>1. 앨범 제목 : <%= title %></p>
	<p>2. 아티스트 : <%= artist %></p>
	<p>3. 출시년도 : <%= releaseYear %></p>
	
	<table border="1">
		<tr>
			<th>제목</th>
			<td><%= title %></td>
		</tr>
		<tr>
			<th>아티스트</th>
			<td><%= artist %></td>
		</tr>
		<tr>
			<th>출시년도</th>
			<td><%= releaseYear %></td>
		</tr>
	</table>
</body>
</html>