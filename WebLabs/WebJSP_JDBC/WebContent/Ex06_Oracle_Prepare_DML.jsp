<%@page import="kr.or.bit.utils.SingletonHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	//insert into dmlemp(empno, ename,deptno) values(?,?,?);
	//update dmlemp set ename=?, sal = ?, deptno = ? where empno=?
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		conn=SingletonHelper.getConnection("oracle");
		String sql = "update dmlemp set ename=?, sal = ?, deptno = ?, job=? where empno=?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, "방가");
		pstmt.setInt(2,20000);
		pstmt.setInt(3,20);
		pstmt.setString(4, "IT");
		pstmt.setInt(5,7499);
		
		int row = pstmt.executeUpdate();
		
		if(row>0){
			out.print("<b>updated row count </b>" + row);
		}else{
			out.print("<b>row count </b>" + row);
		}
		
		
	}catch(Exception e){
		System.out.println(e.getMessage());
		
	}finally{
		SingletonHelper.close(pstmt);
	}
			
	%>
</body>
</html>