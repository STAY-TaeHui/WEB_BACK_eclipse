<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <a href="Ex02_JDBC_Main.jsp">Main</a>&nbsp;&nbsp;&nbsp;||
<a href="Ex02_JDBC_Login.jsp">Login</a>&nbsp;&nbsp;&nbsp;||
<a href="Ex02_JDBC_JoinForm.jsp">Register</a>&nbsp;&nbsp;&nbsp;||
<a href="#">Intro</a>&nbsp;&nbsp;&nbsp;||
<a href="#">Intro</a>&nbsp;&nbsp;&nbsp;

<%
	if(session.getAttribute("userid") != null){
		out.print("<b>[ " + session.getAttribute("userid") +" ]</b> 로그인 상태");
		out.print("<a href='Ex02_JDBC_Logout.jsp'>[ 로그아웃 ]</a>");
	}else{
		out.print("<b>[로그인 하지 않으셨네요]</b>");
		out.print("<a href='Ex02_JDBC_Login.jsp'>[ 로그인 ]</a>");
	}
%> 
--%>
<div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link" href="index.jsp">Main</a></li>
			<li><a class="nav-link" href="Login.jsp">Login</a></li>
			<li><a class="nav-link" href="JoinForm.jsp">Register</a></li>
          <li><%
	if(session.getAttribute("userid") != null){
		out.print("<b>[ " + session.getAttribute("userid") +" ]</b> 로그인 상태");
		out.print("<a class='nav-link' href='Logout.jsp'>[ 로그아웃 ]</a>");
	}else{
		out.print("<b>[로그인 하지 않으셨네요]</b>");
		out.print("<a class='nav-link' href='Login.jsp'>[ 로그인 ]</a>");
	}
			%></li>
          </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>