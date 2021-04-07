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
	페이지마다예외상황에 대한 처리 페이지를 설정함
	
	에러페이지 처리는 최종 배포시....에 처리하도록
 -->
 <%
 	String data = request.getParameter("name");
 	String data2 = data.toLowerCase();
 %>
 
 전달받은 내용 : <%=data %>
</body>
</html>