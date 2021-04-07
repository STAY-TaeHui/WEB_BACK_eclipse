<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>FlexStart Bootstrap Template - Index</title>
  <meta content="" name="description">

  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: FlexStart - v1.2.0
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
 //jquery 로 간단하게 유효성 check 하기
 $(function() {
  	$('#joinForm').submit(function() {
	   //alert("가입");
	if ($('#id').val() == "") { // 아이디 검사
    	alert('ID를 입력해 주세요.');
    	$('#id').focus();
    return false;
   } else if ($('#pwd').val() == "") { // 비밀번호 검사
    alert('PWD를 입력해 주세요.');
    $('#pwd').focus();
    return false;
   }else if ($('#mname').val() == "") { // 이름 검사
    alert('mname를 입력해 주세요.');
    $('#mname').focus();
    return false;
   }else if ($('#age').val() == "") { // 나이 검사
    alert('age를 입력해 주세요.');
    $('#age').focus();
    return false;
   }else if ($('#email').val() == "") { // 우편번호
    alert('email를 입력해 주세요.');
    $('#email').focus();
    return false;
   }
   
  });
 });
</script>


<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <jsp:include page="common/Top.jsp"></jsp:include>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">

    <div class="container">
      <div class="row">
       <form action="Ex02_JDBC_JoinOK.jsp" method="post" name="joinForm" id="joinForm">
					<h3 style="text-align: center;">회원가입</h3>
					<div>
						<table
							style="width: 400px; height: 200px; margin-left: auto; margin-right: auto;">
							<tr>
								<th>ID:</th>
								<td><input type="text" name="id" id="id"></td>
							</tr>
							<tr>
								<th>PWD:</th>
								<td><input type="password" name="pwd" id="pwd"></td>
							</tr>
							<tr>
								<th>Name:</th>
								<td><input type="text" name="mname" id="mname"></td>
							</tr>
							<tr>
								<th>age:</th>
								<td><input type="text" name="age" id="age" maxlength="3"></td>
							</tr>
							<tr>
								<th>Gender:</th>
								<td><input type="radio" name="gender" id="gender" value="여"
									checked>여자 <input type="radio" name="gender"
									id="gender" value="남">남자</td>
							</tr>
							<tr>
								<th>Email:</th>
								<td><input type="text" name="email" id="email"></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="회원가입">
									<input type="reset" value="취소"></td>
							</tr>
						</table>

					</div>
				</form>
        
      </div>
    </div>

  </section><!-- End Hero -->

  

   

<jsp:include page="/common/Bottom.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>