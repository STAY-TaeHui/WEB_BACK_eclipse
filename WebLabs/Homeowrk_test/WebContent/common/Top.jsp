<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <script src ="script/jquery-3.6.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <a href="Ex02_JDBC_Main.jsp">Main</a>&nbsp;&nbsp;&nbsp;||
<a href="Ex02_JDBC_Login.jsp">Login</a>&nbsp;&nbsp;&nbsp;||
<a href="Ex02_JDBC_JoinForm.jsp">Register</a>&nbsp;&nbsp;&nbsp;||
<a href="#">Intro</a>&nbsp;&nbsp;&nbsp;||
<a href="#">Intro</a>&nbsp;&nbsp;&nbsp; -->
<link rel="stylesheet" href="common/Top.css">
<nav class="nav">
	<div class="container">
	
		<div class="logo">
			<button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button>
		</div>
		<div id="mainListDiv" class="main_list">
			<ul class="navlinks">
				<li><a href="Ex02_JDBC_Main.jsp">Main</a></li>
				<li><a href="Ex02_JDBC_Login.jsp">Login</a></li>
				<li><a href="Ex02_JDBC_JoinForm.jsp">Register</a></li>
				<li>
					<%
	if(session.getAttribute("userid") != null){
		out.print("<b>[ " + session.getAttribute("userid") +" ]</b> 로그인 상태");
		out.print("<a href='Ex02_JDBC_Logout.jsp'>[ 로그아웃 ]</a>");
	}else{
		out.print("<b>[로그인 하지 않으셨네요]</b>");
		out.print("<a href='Ex02_JDBC_Login.jsp'>[ 로그인 ]</a>");
	}
%></a>
				</li>
			</ul>
		</div>
		<span class="navTrigger"> <i></i> <i></i> <i></i>
		</span>
	</div>
</nav>

<script type="text/javascript">
$('.navTrigger').click(function () {
    $(this).toggleClass('active');
    console.log("Clicked menu");
    $("#mainListDiv").toggleClass("show_list");
    $("#mainListDiv").fadeIn();

});
</script>

