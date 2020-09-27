<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

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
      background-image: url('../images/bgimg.jpg');
      background-attachment: fixed;
      background-repeat: no-repeat;
      width: 100%;
      height: 100%;
   	  background-size:cover;

   }

</style>

</head>

<body>
	<div id="content">

<!-- Top bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
	      <a class="navbar-brand" href="membermain.do">O & O</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	
	      <div class="collapse navbar-collapse" id="navbar">
	        <ul class="navbar-nav mr-auto">
				<li><a class="nav-link" href="myhabit.do">나의습관</a></li>
	      		<li><a class="nav-link" href="challengeboard.do">챌린지게시판</a></li>
	  			<li><a class="nav-link" href="reviewboard.do">후기게시판</a>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-item active nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">마이페이지</a>
	            <div class="dropdown-menu" aria-labelledby="dropdown">
	            <a class="dropdown-item" href="myinfo.do">회원정보</a>
	              <a class="dropdown-item" href="main.do">로그아웃</a>
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
				<div class="square profile">
					<img class="lion" src="./images/O&O_Logo.png" style="max-width: 250px; max-height: 250px;">
				</div>
				<div class="square content">
					<h3>${vo.nickname} 님,</h3>
					<h5>하루 한걸음씩!! 화이팅!! O&O가 당신과 함께 합니다</h5>
					<h5>NAME : ${vo.m_id}</h5>
					<h5>E-MAIL : ${vo.email}</h5>
					<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="#memberInfo">회원정보 수정</a>
				</div>
				</div>
			</div>
		</div>
	</header>
</header>
				
			
<!-- 회원정보 확인 -->
	<div class="modal fade" id="memberInfo" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">회원정보</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label>${vo.m_id}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label>${vo.name}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <label>${vo.nickname}</label>
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.tel}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.gender}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.job}</label>
						</div>
					</div>
						<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.email}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.habit}</label>
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


<!-- 회원정보 수정 -->
	<div class="modal fade" id="memInfoChange" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">회원정보 수정</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="infoupdate.do" method="get">
						<div class="form-row">
						<div class="form-group col-sm-6">
							<label>${vo.m_id}</label>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<input type="text" name="pw" id="pw" value="pw" placeholder="${pw}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
							<input type="text" name="name" id="name" value="${vo.name}" placeholder="${vo.name}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <input type="text" name="nick" id="nick" value="" placeholder="${vo.nickname}" />
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="tel" id="tel" value="" placeholder="${vo.tel}" />
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
								<input type="radio" name="gender" id="male" class="custom-control-input">
								<label class="custom-control-label" for="male">남자&emsp;&emsp;&emsp;</label>
						</span>
						<span>
								<input type="radio" name="gender" id="female" class="custom-control-input">
								<label class="custom-control-label" for="female">여자</label>
								</span>
						</div>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="job" id="job" value="" placeholder="${vo.job}" />
						</div>
					</div>
						<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="email" id="email" value="" placeholder="${vo.email}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<input type="text" name="habit" id="habit" value="" placeholder="${vo.habit}" />
						</div>
					</div>
						<div class="modal-footer">
							<input class="btn btn-primary" type="submit" onclick="confirm(수정성공)" value="수정완료" style="color:white;">
							<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="./myinfo.jsp" data-dismiss="modal">취소</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


				
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
				      	<a data-toggle="modal" href="#myChall">아침밥 챙겨먹읍시당!! </a>
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
				      <a data-toggle="modal" href="#viewpPoofModal">vo.prf_id</a>
				      </div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
				      <h4 class="panel-title">
				        <a class="btn btn-info mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          나의 후기 모아보기</a></h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				      <div class="panel-body">
				      <a data-toggle="modal" href="#viewpReviewModal">.r_title}</a>
				      </div>
				
				</div>
			</div>
	
		</div>
	</div>
</section>			


<!-- 내 챌린지 보기 -->
	<div class="modal fade" id="myChall" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">아침밥 챙겨먹읍시당!!</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
			<form action="./myinfo.jsp" method="get">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>방장닉네임</label> <label> ymj </label>
							</div>
						</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <label>START : 2020-09-25 </label><label>END : 2021-09-25</label>
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>10</label>
						</div>
					</div>
						<div class="form-group">
							<div>아침밥을 챙겨먹고 나옵시다!</div>
						</div>
						
						<canvas id="myhorizChart" width="400" height="200"></canvas>
							<script>
							var ctx = document.getElementById('myhorizChart');
							var myhorizChart = new Chart(ctx, {
								type: 'horizontalBar',
								data: {
									labels: ['ymj', 'bhs', 'aaj', 'but', 'gri', 'jhw'],
									datasets: [{
										label: '아침밥을 챙겨먹읍시당!!',
										data: [12, 9, 3, 5, 2, 3, 13],
										backgroundColor: [
											'rgba(255, 99, 132, 0.2)',
											'rgba(54, 162, 235, 0.2)',
											'rgba(255, 206, 86, 0.2)',
											'rgba(75, 192, 192, 0.2)',
											'rgba(153, 102, 255, 0.2)',
											'rgba(255, 159, 64, 0.2)',
										],
										borderColor: [
											'rgba(255, 99, 132, 1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)',
										],
										borderWidth: 1
									}]
								},
								options: {
									responsive: false,
									scales: {
										xAxes: [{
											ticks: {
												beginAtZero: true
											}
										}]
									},
								}
							});
							</script>
						
						
						
					<div class="modal-footer">
						<a class="btn btn-warning" data-toggle="modal" onclick="newProof(event)" href="#proofModal" data-dismiss="modal" style="color:white;">인증하기</a>
						<button type="button" class="btn btn-secondary"	data-dismiss="modal">닫기</button>
					</div>
			</form>
				</div>
			</div>
		</div>
	</div>


<!-- 나의 인증 보기 -->
	<div class="modal fade" id="viewpPoofModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
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
								<label>인증 제목</label>&emsp;&emsp;&emsp;<label>{vo.prf_titl}</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-12">
                        		<label>인증 날짜</label>&emsp;&emsp;&emsp;<label>prf_date</label>
                     		</div>
                   		</div>
		                <div class="form-row">
		                   <div class="form-group col-sm-12">
		                   		<label>챌린지 기간</label>&emsp;&emsp;<label>vo.ch_startDate + ch_endDate</label>
		                   </div>
		                </div>
						<div class="form-row">
						   <div class="form-group col-sm-12">
								<label>내용</label>&emsp;&emsp;&emsp;
								<p>{vo.prf_titl}</p>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>첨부파일</label>&emsp;&emsp;&emsp;<label>vo.ch_startDate + ch_endDate</label>
							</div>
						</div>
						<div class="modal-footer">
							<a class="btn btn-secondary mx-1 mt-2" data-toggle="modal" href="#challViewModal" data-dismiss="modal">취소</a>
						</div>
				</div>
			</div>
		</div>
	</div>


<!-- 나의 후기 보기 -->
	<div class="modal fade" id="viewpReviewModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">후기 제목_{vo.r_name}</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지명</label>&emsp;&emsp;&emsp;<label>{vo.ch_name}</label>>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>닉네임</label>&emsp;&emsp;&emsp;&emsp;<label>{vo.nickname}</label>>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지 시작일</label>  <div>{vo.startDate}</div>
							</div>
							<div class="form-group col-sm-6">
								<label>챌린지 마감일</label>  <div>{vo.endDate}</div>
							</div>
						</div>
						<div class="form-group">
							<label>내용</label> <div>{vo.r_content}</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>첨부파일</label>  <div>{vo.startDate}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<span class="text-right" style="color: green;">추천: 15★</span>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
						</div>
				</div>
			</div>
		</div>
	</div>

<!-- 완료 습관 챌린지  -->

<div class="modal fade" id="viewpEndModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">완료 챌린지 모음_{vo.ch_name}</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-sm-8">
								<label>챌린지명1</label>&emsp;&emsp;&emsp;<label>{vo.ch_name}</label>>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-8">
								<label>챌린지명2</label>&emsp;&emsp;&emsp;<label>{vo.ch_name}</label>>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-8">
								<label>챌린지명3</label>&emsp;&emsp;&emsp;<label>{vo.ch_name}</label>>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
						</div>
				</div>
			</div>
		</div>
	</div>





<script>

/*챌린지 인증 메소드*/
function newProof(e){
	var prf_id=0;
	if(!confirm('인증하시겠습니까?')){
		e.preventDefault();
	}else{
		proofConfirmed(e);
		return prf_id;
	}
	}
function proofConfirmed(e){
	return alert('인증 성공! 나의 인증 모아보기에서 확인하세요.')			
}

</script>

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