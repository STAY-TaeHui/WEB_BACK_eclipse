<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <!-- 
 	버퍼는 구현하지 않아도 Default 8KB, autoFlush
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page buffer</title>
</head>
<body>
<%
	//out 객체 (WAS에서) >> System.out.println()이랑 똑같음
	for(int i=0; i<10; i++){
		out.print("<b>" + i + "<b><br>");
		
	}
	//buffer에 담아서 출력할꺼임
	//jsp 페이지에 더이상 buffer에 담을 내용이 없으면 자동으로 flush!!
%>

</body>
</html>