<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //�ѱ�ó��
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
                <td align="center">�̸�</td>
                <td><%=application.getAttribute("name")%></td><!-- //application�̱⶧����  ������ ���Ѿ��� �޾ƿ´�  -->
            </tr>
            <tr>
                <td align="center">���̵�</td>
                <td><%=application.getAttribute("id")%></td><!-- //application�̱⶧����  ������ ���Ѿ��� �޾ƿ´�  -->
            </tr>
        </table>
    </form>
    <form method="post">
        <table border="1" align="center">
            <tr>
                <td colspan="2" align="center">Page.2</td>
            </tr>
            <tr>
                <td>�̸���</td>
                <td><%=session.getAttribute("mail")%></td><!--session�� �ٸ� �������� �ƴ϶�� ������� ������ �������   -->
            </tr>
            <tr>
                <td>�ּ�</td>
                <td><%=session.getAttribute("address")%></td><!--session�� �ٸ� �������� �ƴ϶�� ������� ������ �������   -->
            </tr>
            <tr>
                <td>��ȭ��ȣ</td>
                <td><%=session.getAttribute("tel")%></td><!--session�� �ٸ� �������� �ƴ϶�� ������� ������ �������   -->
            </tr>
        </table>
    </form>
</body>
</html>
