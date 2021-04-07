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
	Client(Local PC : 브라우저)
	1. Cookie(메모리쿠키, 파일쿠키(local 디스크 (txt)파일로 : 암호화 되서)
		>> 소멸시기가 있으면 [파일쿠키] ,  브라우저를 닫으면 사라지는 [메모리쿠키]
		단점 : 8kb
	2. Local Storage : (key, value)형태로 저장

	Server(웹서버 : WAS)
	1. server memory : session객체(사이트에 접속하는 사용자마다 부여하는 고유한 식별값 : 웹서버의 메모리) >> 서버 리부팅, 종료 시 데이터 소멸
	2. server memory : Application객체(사이트에 접속하는 모든 사용자가 공유하는 객체) >> 서버 리부팅, 종료 시 데이터 소멸
	3. server에 영속적\
	4. DB server에 저장 : 보안, 영속적으로 저장가능 >> but, 비용추가....
 -->
 
 <%
 	Cookie mycookie = new Cookie("cname","1004");
 	//쿠키객체 생성
 	//내 사이트에 접속한 브라우저(client)에게 전달
 	
 	response.addCookie(mycookie);
 %>
 
<a href="Ex17_Cookie_Read.jsp">Cookie Read</a>
</body>
</html>