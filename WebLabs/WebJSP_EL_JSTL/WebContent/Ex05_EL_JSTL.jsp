<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
/*
	JSTL 구문
	*1. <c:set    	변수생성, 값 저장>
	2. <c:remove 	변수제거  >  
	*3. <c:if test="조건절" 조건문> >> else if 가 없다
	*4. <c:choose 	여러가지 조건에 따라 처리가능 ( if보다 활용도가 높다.)
	*5. <c:forEach 	반복문
	6. <c:forTokens for문과 split 결합
	7. <c:out		출력문. 하지만 EL ${}를 사용하시길
	8. <c:catch		예외처리 가능
	
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL & EL</h3>
	
	EL parameter : ${param.id } - ${param.pwd }<br>
	
	<h3>EL parameter 값 변수에 저장(JSTL)</h3>
	<c:set var="userid" value="${param.id }"></c:set>
	<c:set var = "userpwd" value="${param.pwd }"></c:set>
	<hr>
	<h3>JSTL 변수값 출력</h3>
	id:${userid }<br>
	pwd:${userpwd }<br>
	<hr>
	<c:if test="${!empty userpwd }">
		<h3>not empty userpwd</h3>
		<c:if test="${userpwd=='1004' }">
			<h3>welcom Admin page</h3>
		</c:if>
	</c:if>
	
	
	
</body>
</html>