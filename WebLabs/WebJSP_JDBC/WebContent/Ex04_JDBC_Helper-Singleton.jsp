<%@page import="kr.or.bit.utils.SingletonHelper"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.bit.utils.ConnectionHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn = null;
	conn = ConnectionHelper.getConnection("oracle");
	conn.close();
	
	conn = ConnectionHelper.getConnection("oracle", "system", "1004");
	
	//하나의 연결객체를 만들어서 사용하면(공유하면) 되지않나? >> Singleton(학습용)
	
	Connection conn2 = null;
	conn2 = SingletonHelper.getConnection("oracle");
	
	Connection conn3 = null;
	conn3 = SingletonHelper.getConnection("oracle"); 
	System.out.println(conn2 == conn3);
	System.out.println(conn2);
	System.out.println(conn3);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	연결여부 : <%=conn.isClosed() %><br>
	재정의 : <%=conn.toString() %><br>
	ProductName : <%=conn.getMetaData().getDatabaseProductName() %><br>
	ProductName : <%=conn.getMetaData().getDatabaseProductVersion() %><br>
	
</body>
</html>