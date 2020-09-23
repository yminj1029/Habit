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
<link rel="stylesheet" href="./css/custom.css" />s

<title>myHabit</title>
<style>
body{
      background-image: url('./images/sky.png');
      background-attachment: fixed;
      background-repeat: no-repeat;
      width: 100%;
   height: 100%;
   background-size:cover;
     z-index: -1;
  opacity: 0.5;
   }

</style>

</head>

<body>
	<div id="content">
			<!-- Top bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
	      <a class="navbar-brand" href="index5.jsp">HABIT</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	
	      <div class="collapse navbar-collapse" id="navbar">
	        <ul class="navbar-nav mr-auto">
				<li><a class="nav-link" href="myhabit.jsp">나의습관</a></li>
	      		<li><a class="nav-link" href="challenge.jsp">챌린지게시판</a></li>
	  			<li><a class="nav-link" href="review.jsp">후기게시판</a>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-item active nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">마이페이지</a>
	            <div class="dropdown-menu" aria-labelledby="dropdown">
	            <a class="dropdown-item" href="myinfo.jsp">회원정보</a>
	              <a class="dropdown-item" href="index2.jsp">로그아웃</a>
	            </div>
	          </li>
	        </ul>
	      </div>
	    </nav>
	</div>

	<!--  Main -->
<header>
	<header id="header2">
		<div class="container">
			<div class="jumbotron">
				<h1>회원정보</h1>
				<div class="container2">
				<div class="square profile"><a class="btn btn-secondary mx-1 mt-2" data-toggle="modal"
				href="#profileModal">프로필사진</a>
				</div>
				<div class="square content">
					<h5>{vo.nickname} 님,</h5>
					<h6>{vo.email}</h6>
					<p>색바꾸기!+버튼클릭시↔or modal띄우기+글씨↑자동 늘리기</p>
					<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="#">회원정보 수정</a>
				</div>
				</div>
			</div>
				
				
						</div>
	</header>
	
</header>
				
				
				
				
	<section id="header3">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Collapsible Group Item #1
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      1번쨈ㄴㅇㅎㅁㅇㄴ
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Collapsible Group Item #2
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
      2번ㅉ애ㅓㅁㄹ나엏
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Collapsible Group Item #3
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
      3번쨍ㄹㅇㄹㅇ
      </div>
    </div>
  </div>
</div>
	</section>			

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