<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="oracle"></c:set>
	변수값 출력 : ${str }
	
	<h3>함수 적용</h3>
	대문자 : ${fn:toUpperCase(str) }
	문자열길이 : ${fn:length(str) }
	<% Emp emp = new Emp(100,"hong");
		
	%>
</body>
</html>