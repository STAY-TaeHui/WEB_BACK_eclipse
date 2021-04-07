<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		1. 메모리쿠키 : Client가 강제로 지우지 않는한.. 브라우져 닫기 전까지는 유효
			소멸타임 : getMaxAge() >> -1
			
		2. 파일쿠키 : Client가 강제로 지우지 않는한 정해진 시간까지 유효
		
		30일 >> (30*24*60*60) 일 시 분 초
		setMaxAge(30*24*60*60)
		
	 -->
<%
	Cookie co = new Cookie("bit","hong");
	co.setMaxAge(30*24*60*60); // 30일
	response.addCookie(co);
%>
</body>
</html>