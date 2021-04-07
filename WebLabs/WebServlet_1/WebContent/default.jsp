<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet 요청하기</title>
</head>
<body>
	<h3>servlet 요청</h3>
	<h3>getContextPath</h3>
	<%=request.getContextPath() %><hr>
	
	<!-- POST라고 명시해주지 않으면 모두 GET방식으로 전달 -->
	<a href="<%= request.getContextPath() %>/simple">simple_요청하기(GET)</a>
	<br>
	<a href="<%= request.getContextPath() %>/simple?type=date">날짜_요청하기(GET)</a>
	<br>
	<a href="<%= request.getContextPath() %>/simple?type=abcd">비정상_요청하기(GET)</a>
	
<hr>
	<h3>FrontServletController</h3>
	<a href="<%= request.getContextPath() %>/action.do?cmd=greeting">요청하기(GET)</a>
	
	<hr>
	<h3>FrontBoardController</h3>
		<a href="<%= request.getContextPath() %>/board?cmd=boardlist">게시판 목록보기</a><br>
		<a href="<%= request.getContextPath() %>/board?cmd=boardwrite">게시판 글쓰기</a><br>
		<a href="<%= request.getContextPath() %>/board">cmd is null Error 유도하기</a><br>
		<a href="<%= request.getContextPath() %>/board?cmd=boarddelete">게시판 삭제하기</a><br>
		<a href="${pageContext.request.contextPath }/board?cmd=login">보안페이지 로그인</a><br>
	
	
	
	
	
</body>
</html>