<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); 
//<% ��ũ��Ʈ�� ��� ���� �� ��ũ��Ʈ ���������� JAVA�ڵ��� ���� �ϴ� 
//��û�Ѵ�.request��ü�� ���� �Ѿ��  �Ķ�����߿��� �ѱ��� �ֱ⶧���� �ѱ۸��� ���� �ڵ�
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    //String ��ü�� ��û ���� �Ķ���� �� ���� : request
    //�ؿ� name, id�� ���� ���� ����
    String name = request.getParameter("name");
    String id = request.getParameter("id");
 
    //���� ���� : application
    application.setAttribute("name", name);
    application.setAttribute("id", id);//StringŸ�� ���� name�� id���ٰ�  ��û���� �Ķ���� name�� id����
        //application������setAttribute()�޼ҵ带 ����ϹǷ� ��������������� anme�� id�� ����Ҽ��ִ�.
        //name���� �̸� ���� name��ü�� ���
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.2</title>
</head>
<body>
    <h2 align="center">Page.2</h2>
    <!-- application ���� : ��� ���������� ��� ���� -->
<!--��û�� name��id�� �̿���  -->
    <h3 align="center"><%=name%>�Դϴ�.<br><%=name%>���� ���̵ڴ�
        <%=id%>�Դϴ�.
    </h3>
        <!--�̰��� ��������� ������ ��밡�� application�����̿���   -->
    <!--form�±׸� ����ϹǷ� attributeTest2.jsp ���Ϸ� post������� �Ķ���͵��� �Ѱ��ִµ� 
���Ķ���͵��� ������ table�±��̸鼭 session������ ������  �����͵��� �Է� ���� form�� �����Ѱ�  
    page3.jsp�� ���� session�� ����� ���ִ� -->
    <form action="page3.jsp" method="post">
        <table align="center" border="1">
            <tr>
                <td align="center" colspan="2">PAGE.2</td>
            </tr>
            <tr>
                <td align="center">�̸���</td>
                <td><input type="text" name="mail" /></td>
            </tr>
            <tr>
                <td align="center">�ּ�</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td align="center">��ȭ��ȣ</td>
                <td><input type="text" name="tel" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Ȯ��" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
