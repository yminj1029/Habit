<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Dimension by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css?3" />
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
						<h1>&emsp;&emsp;&emsp;O & O&emsp;&emsp;&emsp;</h1>
						<p></p>
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
				<form action="login.do" method="post">			<!-- 9.23 폼태그 , 패쓰워드 형식바꿈-->
							<h2 class="major">로그인</h2>
							<p><input type="text" name="login_id" id="login_id" value="" placeholder="아이디를 입력하세요" /></p>
							<p><input type="password" name="login_pw" id="login_pw" value="" placeholder="비밀번호를 입력하세요" /></p>
							<div>
								<button id ="login" type="submit">LOGIN</button>
							</div>
					</form>
						</article>
						<article id = "membership">	<!-- 09.18 -->
						<form action="register.do" method="post">
							<h2 class="major">회원가입</h2> <!-- 9.23폼태그 추가, 패쓰워드 형식바꿈, 네임,아이디명 바꿈 -->
							
							<p><input type="text" name="m_id" id="m_id" value="" placeholder="* 아이디를 입력하세요" /></p>
							<p><input type="password" name="pw" id="pw" value="" placeholder="* 비밀번호를 입력하세요" /></p>
							<p><input type="text" name="name" id="name" value="" placeholder="* 이름을 입력하세요" /></p>
							<p><input type="text" name="nickname" id="nickname" value="" placeholder="* 닉네임을 입력하세요" /></p>
							<p><input type="text" name="tel" id="tel" value="" placeholder="* 핸드폰 번호를 입력하세요" /></p>
							<div class="custom-control custom-radio">
							<div>성별을 선택하세요</div>
								<input type="radio" name="gender" id="male" class="custom-control-input" value="남">
								<label class="custom-control-label" for="male" value="M">남자</label>
								<input type="radio" name="gender" id="female" class="custom-control-input1" value="여">
								<label class="custom-control-label" for="female" value="F">여자</label>
							</div>
							<p></p>
							<p><input type="text" name="job" id="job" value="" placeholder="직업을 입력하세요" /></p>
							<p><input type="text" name="email" id="email" value="" placeholder="이메일을 입력하세요" /></p>
							<p><input type="text" name="habit" id="habit" value="" placeholder="습관을 입력하세요" /></p>
							<div>
								<button id ="membership" type="submit" >회원가입</button>
							</div>
						</article>
						</form>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bgimg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
<script type="text/javascript">
$("input[name=radio_agree]:checked").val() = undefined;

</script>
	</body>
</html>
