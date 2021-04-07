<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//클라이언트 요청 데이터 받기
	//Tomcat(내장된 객체)
	//웹에 사용되는 전용 객체 (request , reponse) >> new 하지 않아요 >> 생성된 객체 바로 사용
    //request 요청 객체(클라이언트 정보를 취득 : request객체 얻는다 (입력 데이터,  IP , 브라우져 버전))
    //response 응답 객체 (서버 ..자원 >> 클라이언트 write)
    //Request request = new Request(); 되 있다고 가정...
    String uid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String[] hobby = request.getParameterValues("hobby");
    
    
    
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버에 응답<br>
	ID 값 : <%=uid %><br>
	PWD값 : <%=pwd %><br>
	당신의 취미는 <br>
	<%
		for(String str : hobby){
	%>
		hobby:<%= str %><br>
	<%		
		}
	%>
</body>
</html>