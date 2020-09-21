<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- 반응형 웹에 관한것 -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-sacle=1, shrink-to-fit=no">
	<title>HABIT</title>
	
<!-- 부트스트랩 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- 커스텀 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/custom.css" />

<title>myHabit</title>

<style>
.padding{
	border:1px solid red;
	padding:20px;
}
#calendar {
	width: 50px;
	height: 50px;
	background-color: yellow;
	letter-spacing: 5px;
	text-align:center;
	line-height: 300px;
}
#graph {
	width: 50px;
	height: 50px;
	background-color: yellow;
	letter-spacing: 5px;
	text-align:center;
	line-height: 300px;
}
</style>

</head>
<body>

<div id="content">
	<!-- Top bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="index.jsp">HABIT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="myhabit.jsp">나의습관</a></li>
      		<li><a class="nav-link" href="challenge.jsp">챌린지게시판</a></li>
  			<li><a class="nav-link" href="review.jsp">후기게시판</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">마이페이지</a>
            <div class="dropdown-menu" aria-labelledby="dropdown">
            <a class="dropdown-item" href="myinfo.jsp">회원정보</a>
              <a class="dropdown-item" href="index2.jsp">로그아웃</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
</div>

<!-- Main -->
<!-- 방법1 -->
	<div id="wrapper">
	<div>
		<div class="padding">calendar</div>
		<div class="padding">graph</div>
		<div class="padding">weekly</div>
		<div class="padding">total</div>
	</div>
	</div>

<!-- 방법2 -->


<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>


</body>
</html>