<%@page import="kr.or.bit.Emp"%>
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
	Tomcat 제공 : 기본적인 내장객체
	1. request( 요청 : 클라이언트 정보)
	2. response( 응답 : 특정페이지 이동  , 정보 출력, 쿠키 쓰기)
	3. application(전역객체 : web.xml 자원 접근)
	4. session(고유객체 ( 접속한 사용자에게 부여되는 고유객체)) : 고유한 변수
	5. out 출력
	
	session객체
	[내부에 session변수 생성]
	scope!!!!! >> session의 scope는 모든 페이지
		: a.jsp(setAtt)
		  b.jsp(getAtt)
	
	session 변수는 (현재 WebContent 폴더 안에있는 모든 페이지에서 사용가능
	Life-cycle : 1. session 변수는 session객체와 동일
				 2. session의 소멸 : 서버 리부팅, Tomcat 재실행, session.invalidate()
				 
	application 객체
	[내부에 application변수 생성 : 전역변수 >> 모든 session( 접속한 모든 사용자)공유
	scope : (현재 WebContent 폴더 안에있는 모든 페이지에서 사용가능 >> java의 static
	Life-cycle : 서버 리부팅, Tomcat 재실행
	
	*request 객체
	[내부에 변수 생성] : request.setAttribut("type","A");
	scope : 요청 페이지(login.jsp)
	예외적으로~~~~~~~~~~~~~~~~~~~
	login.jsp >> ok.jsp(include or forward) >> request객체는 ok.jsp에서도 공유된다.
	

 -->
<%
	Emp emp = new Emp();
	emp.setEmpno(2000);
	emp.setEname("홍길동");
	
	session.setAttribute("empobj",emp); // 어느 페이지에서든 사용 가능하다
	
	Emp e = (Emp)session.getAttribute("empobj");// Object이기 때문에 다운캐스팅 필수!!
	out.print(e.getEmpno() + "<br>");
	out.print(e.getEname() + "<br>");
	
	//request
	request.setAttribute("who", "king");
	//기본은 현재 페이지
	String who = (String)request.getAttribute("who");
	out.print(who);
	
	

%>
</body>
</html>