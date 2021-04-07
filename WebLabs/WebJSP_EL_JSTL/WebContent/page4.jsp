<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //한글처리
%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.4</title>
</head>
<body>
    <h2 align="center">Page.4</h2>
    <form method="post">
        <table border="1" align="center">
            <tr>
                <td colspan="2" align="center">Page.1</td>
            </tr>
            <tr>
                <td align="center">이름</td>
                <td><%=application.getAttribute("name")%></td><!-- //application이기때문에  영역에 제한없이 받아온다  -->
            </tr>
            <tr>
                <td align="center">아이디</td>
                <td><%=application.getAttribute("id")%></td><!-- //application이기때문에  영역에 제한없이 받아온다  -->
            </tr>
        </table>
    </form>
    <form method="post">
        <table border="1" align="center">
            <tr>
                <td colspan="2" align="center">Page.2</td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><%=session.getAttribute("mail")%></td><!--session은 다른 블라우져만 아니라면 괜찮기기 때문에 상관없다   -->
            </tr>
            <tr>
                <td>주소</td>
                <td><%=session.getAttribute("address")%></td><!--session은 다른 블라우져만 아니라면 괜찮기기 때문에 상관없다   -->
            </tr>
            <tr>
                <td>전화번호</td>
                <td><%=session.getAttribute("tel")%></td><!--session은 다른 블라우져만 아니라면 괜찮기기 때문에 상관없다   -->
            </tr>
        </table>
    </form>
</body>
</html>
