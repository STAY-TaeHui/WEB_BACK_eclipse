<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //EL 스크립트언어
    //EL을 사용한다 해서 JAVA 객체 API를 지원하지느 않음 
    //JAVA API는 스크립트릿으로 사용
    
    Date today = new Date();
    request.setAttribute("day", today);
    session.setAttribute("day2", today);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL 화면 출력</h3>
	EL : day2 : ${day2}<br>
	EL : ${requestScope.day }<br>
	EL  :${day}<br>
	EL : ${sessionScope.day2 }<br>
</body>
</html>