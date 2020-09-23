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
	            <a class="dropdown-item" href="./myinfo3.jsp">회원정보</a>
	              <a class="dropdown-item" href="./index.jsp">로그아웃</a>
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
					<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="#memberInfo">회원정보 수정</a>
				</div>
				</div>
			</div>
		</div>
	</header>
</header>
				
				
<!-- 모아보기 section -->						
<section id="header3">
	<div class="wrap">
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingOne">
		      <h4 class="panel-title">
		        <a class="btn btn-info mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          나의 챌린지 모아보기 </a></h4>
		    </div>
		    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		      <div class="panel-body">
		      vo.ch_id
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingTwo">
		      <h4 class="panel-title">
		        <a class="btn btn-secondary mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		          나의 인증 모아보기
		        </a>
		      </h4>
		    </div>
		    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		      <div class="panel-body">
		      vo.prf_id
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingThree">
		      <h4 class="panel-title">
		        <a class="btn btn-secondary mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		          나의 후기 모아보기</a></h4>
		    </div>
		    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
		      <div class="panel-body">
		      vo.r_id
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingFour">
		      <h4 class="panel-title">
		        <a class="btn btn-secondary mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
		          엔딩 크레딧</a></h4>
		    </div>
		    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
		      <div class="panel-body">
		      완료된 습관 챌린지
		      </div>
		    </div>
		  </div>
		</div>
	</div>
</section>			


<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;"> Credit @ 2020 빅데이터 3차 윤민지 박한성 정혜원 안예지. </footer>
	


<!-- 회원정보 확인&수정 -->
	<div class="modal fade" id="memberInfo" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">{vo.ch_name}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label>{vo.m_id}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label>{vo.pw}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label>{vo.name}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <label>{vo.nickname}</label>
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>{vo.tel}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>{vo.gender}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>{vo.job}</label>
						</div>
					</div>
						<div class="form-row">
						<div class="form-group col-sm-4">
							<label>{vo.email}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>{vo.category}</label>
						</div>
					</div>
					<div class="modal-footer">
						<a class="btn btn-primary" data-toggle="modal" href="#memInfoChange" data-dismiss="modal">정보수정</a>
						<button type="button" class="btn btn-secondary"	data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>


<!-- 챌린지 인증하기 -->
	<div class="modal fade" id="memInfoChange" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">챌린지 인증</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./myinfo3.jsp" method="get">
						<div class="form-row">
						<div class="form-group col-sm-6">
							<label>{vo.m_id}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<input type="text" name="membership_pw" id="membership_pw" value="" placeholder="{pw}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<input type="text" name="membership_name" id="membership_name" value="" placeholder="{vo.name}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <input type="text" name="membership_nick" id="membership_nick" value="" placeholder="{vo.nickname}" />
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="membership_tel" id="membership_tel" value="" placeholder="{vo.tel}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
						<div>성별을 선택하세요</div>
						</div></div>
					<div class="form-row">
						<div class="form-group col-sm-6">
					<div class="custom-control custom-radio">
						<span>
								<input type="radio" name="jb-radio" id="jb-radio-1" class="custom-control-input">
								<label class="custom-control-label" for="jb-radio-1">남자</label>
						</span>
						<span>
								<input type="radio" name="jb-radio" id="jb-radio-2" class="custom-control-input">
								<label class="custom-control-label" for="jb-radio-2">여자</label>
								</span>
						</div>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="membership_job" id="membership_job" value="" placeholder="{vo.job}" />
						</div>
					</div>
						<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="membership_email" id="membership_email" value="" placeholder="{vo.email}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="membership_category" id="membership_category" value="" placeholder="{vo.category}" />
						</div>
					</div>
						<div class="modal-footer">
							<input class="btn btn-primary" type="submit" onclick="confirm(수정성공)" value="수정완료" style="color:white;">
							<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="./myinfo3.jsp" data-dismiss="modal">취소</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>



</body>
</html>