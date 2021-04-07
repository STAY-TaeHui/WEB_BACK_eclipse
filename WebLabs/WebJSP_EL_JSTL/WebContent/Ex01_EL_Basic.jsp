<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("userid");
    
    	request.setAttribute("name","korea");
    	session.setAttribute("user", "bit");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	EL(Expression Language) : JSP페이지에서 사용되는 스크립트 언어(화면에 출력)
	생겨난 이유 : 스파게티 코드(%영역과 UI의 혼재) > 유지보수 어렵고, 코드의 해석 어려움
	
	문제해결 : html과도잘 어울리고 서버쪽 출력 언어가 필요(script >> EL & JSTL) >> 단점 : 표준이 아니기때문에 JSP페이지에서만 사용
	
	EL은 Tomcat이 내장하고 있는 자원
	
	El이 가지고 있는 객체
	1. param
	2. paramValues
	3. requsetScope
	4. sessionScope
	5. applicationScope
 -->

<h3>EL</h3>
<b><%= id%></b>
<b><%=request.getAttribute("name") %></b><br>
<b><%=session.getAttribute("user") %></b><br>
<h3>EL 출력표현식</h3>
EL : ${100+50 }<br>
EL : ${"1"+1 }<br><!-- 문자형 숫자 ( 자동 형변환 )  -->
EL : ${empty x }<br><!-- x라는 변수의 값이 비어있나? -->
</body>
</html>