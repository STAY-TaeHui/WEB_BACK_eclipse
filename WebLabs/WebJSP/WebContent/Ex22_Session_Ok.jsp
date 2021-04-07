<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%
   		//한글처리
   		request.setCharacterEncoding("UTF-8");
   
   		//데이터받기
   		String uid = request.getParameter("uid");
   		String pwd = request.getParameter("pwd");
   		
   		//업무처리)
   		boolean success = false;
   		if(uid.equals(pwd)){
   			//로그인성공
   			//로그인이 성공하면 >> session 객체에 변수를 하나 만들자 >> id를 담자
   			//Point : session객체의 scope >> (WebAPP 전체!!!! : 어떤 페이지든 사용 가능)
   			session.setAttribute("memberid", uid);
   			success =true;
   		}
   	
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(success == true){
			out.print("<b>로그인성공</b><br>");
			String user = (String)session.getAttribute("memberid");
			out.print(user + "님 로그인 되었습니다.<br>");
			out.print("<a href='Ex22_Session_Member.jsp'>회원전용</a>");
			
		}else{
	%>
		<script type="text/javascript">
			alert("다시 로그인해주세요");
			//location.href="Ex21_Session_Login.jsp";
			window.history.go(-1);//"Ex21_Session_Login.jsp";
			
		</script>
	
	<%} %>
</body>
</html>