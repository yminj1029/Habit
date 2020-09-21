<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Dimension by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css?1" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
				<header id="header">
					<div class="logo">
						<span class="icon fa-gem"></span>
					</div>
					<div class="content">
						<div class="inner">
						<h1>HABIT</h1>
						<p>Hope you Achieve & Become Incredibly Talented</p>
						</div>
					</div>
					<nav>				<!-- 09.21 -->
					<ul>
						<li><a href="#login">로그인</a></li>
						<li><a href="#membership">회원가입</a></li>
					</ul>
					</nav>
				</header>

				<!-- Main -->
					<div id="main">
						<article id = "login">	<!-- 09.18 -->
							<h2 class="major">로그인</h2>
							<p><input type="text" name="login_id" id="login_id" value="" placeholder="아이디를 입력하세요" /></p>
							<p><input type="text" name="login_pw" id="login_pw" value="" placeholder="비밀번호를 입력하세요" /></p>
							<div>
								<button id ="login">LOGIN</button>
							</div>
						</article>
						
						<article id = "membership">	<!-- 09.18 -->
							<h2 class="major">회원가입</h2>
							<p>*<input type="text" name="membership_id" id="membership_id" value="" placeholder="아이디를 입력하세요" /></p>
							<p>*<input type="text" name="membership_pw" id="membership_pw" value="" placeholder="비밀번호를 입력하세요" /></p>
							<p>*<input type="text" name="membership_name" id="membership_name" value="" placeholder="이름을 입력하세요" /></p>
							<p>*<input type="text" name="membership_nick" id="membership_nick" value="" placeholder="닉네임을 입력하세요" /></p>
							<p>*<input type="text" name="membership_tel" id="membership_tel" value="" placeholder="핸드폰 번호를 입력하세요" /></p>
							<p><input type="text" name="membership_sex" id="membership_sex" value="" placeholder="성별을 입력하세요" /></p>
							<p><input type="text" name="membership_job" id="membership_job" value="" placeholder="직업을 입력하세요" /></p>
							<p><input type="text" name="membership_email" id="membership_email" value="" placeholder="이메일을 입력하세요" /></p>
							<p><input type="text" name="membership_category" id="membership_category" value="" placeholder="습관을 입력하세요" /></p>
							<div>
								<button id ="membership">회원가입</button>
							</div>
						</article>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
