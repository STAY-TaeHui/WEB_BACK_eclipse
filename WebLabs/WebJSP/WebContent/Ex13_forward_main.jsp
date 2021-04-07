<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	
		[요청에 대한 흐름제어]
		
		1. include
		2. forward
		
		공통점 : request객체를 공유한다.
		차이점 : 제어권 : include(제어권을 갖고있다)
					  forward(제어권을 넘겨준다)
					  
					  *** forward POINT(요청주소는 동일한데 다른 페이지의 내용을 서비스함)
					  
					  //실제로 클라이언트가 받는 page정보는 >> A.jsp or B.jsp ...
					  원리 : buffer!!! >> 현재 페이지에서 forward를 만나면 >> buffer를 비워버리고
					  					>> 비워진 buffer에 >A.jsp, B.jsp ... 를 넣어 서비스 한다.
						
	
	
	*/
	
	
	String code = request.getParameter("code");
	String viewurl = null;
	
	if(code.equals("A")){
		viewurl = "/forward/A.jsp";// '/' >> WebContent
	}else if(code.equals("B")){
		viewurl = "/forward/B.jsp";
	}else if(code.equals("C")){
		viewurl = "/forward/C.jsp";
	}
	
%>

<!-- 위에서 forward를 만나면 바로 다음페이지로 이동해버리기 때문에 그리고 현재 페이지의 버퍼를 싹다 날려버리기 때문에
	현재 페이지에 작성되어있는 코드들은 의미가 없다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>나는 forward main 페이지 입니다.</h3>
	<jsp:forward page="<%=viewurl %>"></jsp:forward>
</body>
</html>