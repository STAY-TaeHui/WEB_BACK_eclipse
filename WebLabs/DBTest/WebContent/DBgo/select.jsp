<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>SELECT EMP</h3>
	<form action="${pageContext.request.contextPath}/Select.do" method="get">
		<select name="column">
			<option value="deptno">deptno</option>
			<option value="job">job</option>
		</select>
		<input type="text" name = "where">
		<input type = "submit" value="조회">
	 </form>
</body>
</html>