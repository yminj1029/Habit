<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- 반응형 웹에 관한것 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-sacle=1, shrink-to-fit=no">
<title>HABIT</title>

<!-- 부트스트랩 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- 커스텀 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/custom.css" />


</head>
<body>

	<!-- Top bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">HABIT</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li><a class="nav-link" href="index2.jsp">로그아웃</a></li>
			</ul>
		</div>
	</nav>

	<!--  Main -->

	<header id="header">
		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<h1>HABIT</h1>
					<h5>Hope you Achieve your goals</h5>
					<h5>Become Incredibly Talented</h5>
				</div>
				<table style="margin:auto;text-align:center">
					<tr align="center">
						<td><a class="nav-link" href="myhabit.jsp">나의습관</a></td>
						<td><a class="nav-link" href="challenge.jsp">챌린지</a></td>
						<td><a class="nav-link" href="review.jsp">후기게시판</a></td>
						<td><a class="nav-link" href="mypage.jsp">마이페이지</a></td>
					</tr>
				</table>
			</div>
		</div>
	</header>
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;"> Credit @ 2020 빅데이터 3차 윤민지 박한성 정혜원 안예지. </footer>


	<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>

