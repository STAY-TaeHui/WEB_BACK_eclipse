<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    // session 영역 등록된 속성들  setAttribute(String name, Object Value)
    session.setAttribute("mail", request.getParameter("mail"));//page2.jsp에서 만들어준 것을session영역으로 셋한다.
    session.setAttribute("address", request.getParameter("address"));
    session.setAttribute("tel", request.getParameter("tel"));
 	System.out.println(request.getParameter("name"));
    //밑에 name을 쓰기 위해 선언
    String name = (String) application.getAttribute("name");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.3</title>
</head>
<body>
    <h2 align="center">Page.3</h2>
    <!-- session 영역 -->
    <form action="page4.jsp"><!-- // 마지 막으로 값을 넘긴다 . -->
        <h3 align="center">
            <%=name%>
            정보 저장 ☆완-료☆
        </h3>
        <br>
        <h3 align="center">
            <input type="submit" value="확인">
        </h3>
    </form>
</body>
</html>