<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/*
		web.xml(환경설정 파일은 서버가 시작되면 가장 먼저 로딩됨) >> 가장먼저 해석되고 실행
		<welcom-file> --> 웹사이트 기본 페이지 설정
		
		<display-name>aaa</display-name> >> 웹 프로젝트 이름, 가상 디렉토리, context root, 사이트이름
		/WebContent 안에있는 자원들을 서비스하겠다.>> context root >> 이 디렉토리에서 먼저 시작됨.
		
		>>WebContent >> a.jsp, b.jsp, c.jsp 3개의 페이지가 공유할 수 있는 자원은??
		>> web.xml이 공통자원을 만들 수 있다.
				
		<!-- email이 전역변수가 됨  : WebContent에 있는 모든 페이지에서 사용가능-->
		  <context-param>
		  	<description>개발자 마음...</description>
		  	<param-name>email</param-name>
		  	<param-value>master95@naver.com</param-value>
		  </context-param>
		  
		  Application 객체(WAS) >> web.xml을 read할 수 있다.
		  
		  
	*/
	/*
	  	WebContent >> WEB-INF >> lib
					>> WEB-INF >>  web.xml
		  
		  WEB-INF >> 보안폴더.
		  클라이언트가 추소를 알고 있다 하더라도 접근 불가한 경로
		  접근시 서버는 404를 클라이언트에게 전달....
		  WebContent 폴더 안에있는 자원 >> 클라이언트가 모두 접근 가능
		  
		  ** 따라서 ** 실제 현업 개발코드는,, WebContent폴더에 없다...
		  1. Client가 직접 요청하는 파일들 >> WebContent에 넣고
		  2. Client가 직접 요청하면 안되는 파일들 >> WEB-INF >> views >> member >> register.jsp
		  									>> WEB-INF >> views >> admin >> admin.jsp
	  */
%>
<h3>Application</h3>

<%

	String param = application.getInitParameter("email");
	out.print("<h3>"+param+"</h3>");
	
	String param2 = application.getInitParameter("FilePath");
	out.print("<h3>" + param2+"</h3>");
%>
</body>
</html>