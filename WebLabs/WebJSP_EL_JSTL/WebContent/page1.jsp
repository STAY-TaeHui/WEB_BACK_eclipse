<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //�ѱ�ó��
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.1</title>
</head>
<body>
    <h2 align="center">Page.1</h2>
    <!-- Application ���� -->
    <center>
        <form name="form1" method="post" action="page2.jsp">
            <table border="1" align="center">
                <tr>
                    <td align="center">�̸�</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td align="center">���̵�</td>
                    <td><input type="text" name="id" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Ȯ��" />
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
