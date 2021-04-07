<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//1. 한글처리
    		request.setCharacterEncoding("UTF-8");
    	//2. 데이터 받기
    		String id = request.getParameter("id");
    		//request 객체는 (WAS (Tomcat)이 갖고있는 내장객체)
    		//1. 요청 페이지당 한개가 자동생성
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id:<%=id %><hr>
	접속한 클라이언트 IP:<%= request.getRemoteAddr() %><hr>
	서버 (요청한 인코딩 ) : <%= request.getCharacterEncoding() %><hr>
	전송방식 : <%= request.getMethod() %><hr>
	포트 : <%= request.getServerPort() %><hr>
	대나무숲 : 현진현진 술먹고 머리 안감았데요~~~ <%= request.getContextPath() %><hr>
</body>
</html>