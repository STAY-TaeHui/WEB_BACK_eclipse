<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    // session ���� ��ϵ� �Ӽ���  setAttribute(String name, Object Value)
    session.setAttribute("mail", request.getParameter("mail"));//page2.jsp���� ������� ����session�������� ���Ѵ�.
    session.setAttribute("address", request.getParameter("address"));
    session.setAttribute("tel", request.getParameter("tel"));
 	System.out.println(request.getParameter("name"));
    //�ؿ� name�� ���� ���� ����
    String name = (String) application.getAttribute("name");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.3</title>
</head>
<body>
    <h2 align="center">Page.3</h2>
    <!-- session ���� -->
    <form action="page4.jsp"><!-- // ���� ������ ���� �ѱ�� . -->
        <h3 align="center">
            <%=name%>
            ���� ���� �ٿ�-���
        </h3>
        <br>
        <h3 align="center">
            <input type="submit" value="Ȯ��">
        </h3>
    </form>
</body>
</html>