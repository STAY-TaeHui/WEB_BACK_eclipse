<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomcat Connection Pool 사용하기</title>
</head>
<body>
<%
	Connection conn = null;

	Context context = new InitialContext();
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); //java:comp/env/ + (이름)(jdbc/oracle)
	
	//POOL 안에서 connection 가지고 오기
	conn =ds.getConnection(); 
	
	out.print("db 연결여부 : " + conn.isClosed() + "<br>");
	
	//POINT 반드시 반환!!
	conn.close(); //>> POOL에 반환 >> 연결 끊어지는거나 마찬가지

	out.print("db 연결여부 : " + conn.isClosed() + "<br>");


%>
</body>
</html>