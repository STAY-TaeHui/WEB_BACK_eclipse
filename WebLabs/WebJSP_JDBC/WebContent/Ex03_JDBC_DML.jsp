<%@page import="java.util.Scanner"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
/* 
	JDBC API 통해서 작업
	1. 결과 집합이 없다.
	2. 반영결과(반영된 행의 수 return)
	
	update emp set sal=0 실행 >. return 14
					 결과가 없으면 >> return 0
							 
	java 코드 조건처리 통해서 (성공, 실패 판단)						 
	
	KEY POINT
	1. Oracle DML >> 기본적으로 COmmit or rollback을 무조건 해야함
	2. JDBC API로 하면 default >> Auto Commit
	3. 필요에 따라 commit과 rollback을 자바 코드에서 제어 가능

*/
	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.56:1521:xe","bituser","1004");
		System.out.println("연결 여부 : false :" + conn.isClosed());
		
		stmt = conn.createStatement();
		/* 
		//INSERT
		int empno=0;
		String ename="";
		int deptno=0;
		
		Scanner sc = new Scanner(System.in);
		System.out.println("사번 입력");
		empno = Integer.parseInt(sc.nextLine());
		
		System.out.println("이름 입력");
		ename = sc.nextLine();
		
		System.out.println("사번 입력");
		deptno = Integer.parseInt(sc.nextLine());
		
		//실화냐 이거 석기시대 코딩법
		String sql = "insert into dmlemp(empno, ename, deptno)";
		sql+=" values("+empno+",'"+ename+"',"+deptno+")";
		
		int resultrow = stmt.executeUpdate(sql);
		 */
		 
		 // UPDATE
		 /* 
		 int deptno = 555;
		 String sql = "update dmlemp set sal=0 where deptno="+deptno;
		  */
		  
		 //DELETE
		 int deptno = 20;
		  String sql = "delete from dmlemp where deptno="+deptno;
		 
		 int resultrow = stmt.executeUpdate(sql);
		 
		 
		 
		 
		if(resultrow > 0){
			System.out.println("반영된 행의 수 : " + resultrow);
		}else{
			//문제가 생긴것이 아니다.
			//반영된 행이 없다는 말.
			System.out.println("반영된 행이 없습니다.");
		}
	}
	catch(Exception e ){// >> 무결성 제약조건 걸리면 여기서 걸림
		System.out.println(e.getMessage()); 
	}
	finally{
		if(stmt != null)try {stmt.close();}catch (Exception e) {}
		if(conn != null)try {conn.close();}catch (Exception e) {}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>