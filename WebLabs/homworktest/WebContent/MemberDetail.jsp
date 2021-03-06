<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*  
	회원 상세 페이지 (id 컬럼 PK)
	1.권한 검사
	2.id 값 받기 (request.getparameter("id")) >> 한글처리
	3.select id,pwd,name,age,gender,email from koreamember where id=?
	4.id primary key (데이터 1건 보장)
	5.화면 출력 UI 구성
*/	
/*  
1.관리자만 접근 가능한 페이지
2.로그인한 일반 회원이 주소값을 외워서 ... 접근불가 
3.그러면  회원에 관련되 모든 페이지 상단에는 아래 코드를 ..... : sessionCheck.jsp >> include 
*/
	if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){
		//강제로 페이지 이동
		out.print("<script>location.href='Ex02_JDBC_Login.jsp'</script>");
	}

%>
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

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <jsp:include page="common/Top.jsp"></jsp:include>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">

    <div class="container">
      <div class="row">
     <!--  
				회원리스트 출력
				<table style="width: 400px;height: 100px;margin-left: auto;margin-right: auto">
				</table>
				-->
				<%
				  		String id = request.getParameter("id");
				  
				  		Connection conn = null;
				  		PreparedStatement pstmt = null;
				  		ResultSet rs = null;
				  		
				  		try{
				  			conn = Singleton_Helper.getConnection("oracle");
				  			String sql = "select id,pwd,name,age,gender,email from koreamember where id=?";
				  			pstmt = conn.prepareStatement(sql);
				  			
				  			pstmt.setString(1, id);
				  			
				  			rs = pstmt.executeQuery();
				  			//rs.next(); 추후에 데이터 1건 경우  (while 없이 )
				  			while(rs.next()){
				  %>
				  			 <table style="width: 400px;height: 100px;margin-left: auto;margin-right: auto;">
				  			 	<tr>
				  			 		<td style="width:100px">아이디</td>
				  			 		<td style="width:100px"><%= rs.getString("id") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td style="width:100px">비번</td>
				  			 		<td style="width:100px"><%= rs.getString("pwd") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td style="width:100px">이름</td>
				  			 		<td style="width:100px"><%= rs.getString("name") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td style="width:100px">나이</td>
				  			 		<td style="width:100px"><%= rs.getString("age") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td style="width:100px">성별</td>
				  			 		<td style="width:100px"><%= rs.getString("gender") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td style="width:100px">이메일</td>
				  			 		<td style="width:100px"><%= rs.getString("email") %></td>
				  			 	</tr>
				  			 	<tr>
				  			 		<td colspan="2">
				  			 			<a href="Memberlist.jsp">목록가기</a>
				  			 		</td>
				  			 	</tr>
				  			 </table>	
				  <%				
				  			}
				 
				  		}catch(Exception e){
				  			
				  		}finally{
				  			Singleton_Helper.close(rs);
				  			Singleton_Helper.close(pstmt);
				  		}
				  
				  %>
        
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