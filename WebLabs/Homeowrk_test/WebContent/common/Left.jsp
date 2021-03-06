<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="common/Left.css">
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>
<script src="script/jquery-3.6.0.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<nav id="sidebar">
	<div id="dismiss">
		<i class="fas fa-arrow-left"></i>
	</div>

	<div class="sidebar-header">
		
	</div>

	<ul class="list-unstyled components">
		<li class="active"><a href="#homeSubmenu" data-toggle="collapse"
			aria-expanded="false">Home</a>
			<ul class="collapse list-unstyled" id="homeSubmenu">
				<li><a href="#">Home 1</a></li>
				<li><a href="#">Home 2</a></li>
				<li><a href="#">Home 3</a></li>
			</ul></li>
		<li><a href="#">About</a>
		<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">Pages</a>
			<ul class="collapse list-unstyled" id="pageSubmenu">
				<li><a href="#">Page 1</a></li>
				<li><a href="#">Page 2</a></li>
				<li><a href="#">Page 3</a></li>
			</ul></li>
		<li><a href="#">Portfolio</a></li>
		<li><a href="#">Contact</a></li>
	</ul>

	<ul class="list-unstyled CTAs">
		<li><a
			href="Ex02_JDBC_Login.jsp" 
			class="download">Login</a></li>
		<li><a  href="Ex02_JDBC_JoinForm.jsp"
			class="article">Register</a></li>
	</ul>
</nav>

<script>
 $(document).ready(function () {
	    

	    $('#dismiss, .overlay').on('click', function () {
	        $('#sidebar').removeClass('active');
	        $('.overlay').removeClass('active');
	    });

	    $('#sidebarCollapse').on('click', function () {
	        $('#sidebar').addClass('active');
	        $('.overlay').addClass('active');
	        $('.collapse.in').toggleClass('in');
	        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
	    });
	});
 </script>