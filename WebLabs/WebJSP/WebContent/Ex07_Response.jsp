<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response</title>
</head>
<body>
	<!-- 
		response
		1. 표현식 (출력 가능 ) %=
		2. 페이지의 이동처리를 담당(sendRedirect)
			***javascript : location:href="Ex01_Basic.jsp"
			***서버에게 페이지를 재요청 : F5(새로고침이랑 똑같)
			
			JAVA 코드 (재요청)
			response.sendRedirect("Ex01_Basic.jsp") >> 클라이언트 브라우저에 전달되면 >> 
			>> client가 인지하는 코드로 변경 >> 브라우져에서는 location:href="Ex01_Basic.jsp" 이거로 됨.
	 -->
	 1. 일반적인 출력() : <%=100+200+300 %>
	 2. sendRedirect : respnse 객체의 함수
	 <%
	 	//response.sendRedirect("Ex01_Basic.jsp");
	 
	 %>
	 
</body>
<script type="text/javascript">
location.href="Ex01_Basic.jsp";
</script>
</html>