<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	/* String name = request.getParameter("name");
	if(name.equals("kglim")){
		out.print("<b>" + name + "</b>");
	}else if(name.equals("hong")){
		out.print("<i>" + name + "</i>");
	}else{
		out.print("<h3>" + name + "</h3>");
	}
	out.print("<hr>"); */

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h3>EL & JSTL 바꾸어서 처리(choose)</h3>
     <c:set var="name" value="${param.name}"></c:set>
     <c:set var="pwd" value = "${param.pwd }"></c:set>
     
     <c:choose  >
     	<c:when test="${name.equals('kglim')}">
     				<h1>${name}</h1><br>
     	</c:when>
     	<c:when test="${name.equals('hong')}">
     				<h2>${name}</h2><br>
     	</c:when>
     	<c:otherwise>	
			<h3>${name}</h3><br>
     	</c:otherwise>
     </c:choose>
     
</body>
</html>