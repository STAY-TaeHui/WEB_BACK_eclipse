<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); 
//<% 스크립트를 사용 했을 때 스크립트 영역에서는 JAVA코딩이 가능 하다 
//요청한다.request객체를 통해 넘어온  파라미터중에서 한글이 있기때문에 한글리를 위한 코딩
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    //String 객체에 요청 받은 파라미터 값 저장 : request
    //밑에 name, id를 쓰기 위해 선언
    String name = request.getParameter("name");
    String id = request.getParameter("id");
 
    //정보 저장 : application
    application.setAttribute("name", name);
    application.setAttribute("id", id);//String타입 변수 name과 id에다가  요청받은 파라미터 name과 id정장
        //application영역에setAttribute()메소드를 사용하므로 어느페이지에서라도 anme과 id를 사용할수있다.
        //name값의 이름 으로 name객체를 등록
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Page.2</title>
</head>
<body>
    <h2 align="center">Page.2</h2>
    <!-- application 영역 : 어느 페이지에서 사용 가능 -->
<!--요청한 name과id를 이용함  -->
    <h3 align="center"><%=name%>입니다.<br><%=name%>님의 아이뒤는
        <%=id%>입니다.
    </h3>
        <!--이것은 어느페이지 에서도 사용가능 application영역이여서   -->
    <!--form태그를 사용하므로 attributeTest2.jsp 파일로 post방식으로 파라미터들을 넘겨주는데 
그파라미터들의 내용은 table태그이면서 session영역에 저장할  데이터들을 입력 받을 form을 생성한것  
    page3.jsp에 보면 session이 만들어 져있다 -->
    <form action="page3.jsp" method="post">
        <table align="center" border="1">
            <tr>
                <td align="center" colspan="2">PAGE.2</td>
            </tr>
            <tr>
                <td align="center">이메일</td>
                <td><input type="text" name="mail" /></td>
            </tr>
            <tr>
                <td align="center">주소</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td align="center">전화번호</td>
                <td><input type="text" name="tel" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="확인" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
