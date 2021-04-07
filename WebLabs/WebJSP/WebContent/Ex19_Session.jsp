<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Server(웹서버 : WAS)
	1. server memory : session객체(사이트에 접속하는 사용자마다 부여하는 고유한 식별값 : 웹서버의 메모리) >> 서버 리부팅, 종료 시 데이터 소멸
	2. server memory : Application객체(사이트에 접속하는 모든 사용자가 공유하는 객체) >> 서버 리부팅, 종료 시 데이터 소멸
	3. server에 영속적\
	4. DB server에 저장 : 보안, 영속적으로 저장가능 >> but, 비용추가....
		
		
		session객체 : 서버에서 접속한 사용자마다 고유하게 부여하는 객체...(고유하다 : key)
		
		seesion객체 생성[고유한] : 
	 -->
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
%>
	<h3>세션정보</h3>
	session 객체의 식별값 : <%=session.getId() %><br>
	<hr>
	<%time.setTime(session.getCreationTime()); %>
	[session 생성된 시간 ] : <%=formatter.format(time) %>
	<hr>
	<%time.setTime(session.getLastAccessedTime()); %>
	[session 마지막 접속시간(client)]]: <%=formatter.format(time) %>
	
</body>
</html>