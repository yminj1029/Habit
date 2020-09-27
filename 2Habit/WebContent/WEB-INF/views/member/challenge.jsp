<%@page import="java.util.ArrayList"%>
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
<meta name="viewport"
	content="width=device-width, initial-sacle=1, shrink-to-fit=no">

<!-- 부트스트랩 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- 커스텀 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/custom.css" />

<title>HABIT</title>

</head>
<body>

<!-- Top bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="membermain.do">HABIT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
			<li><a class="nav-link" href="myhabit.do">나의습관</a></li>
      		<li class="nav-item active"><a class="nav-link" href="challengeboard.do">챌린지게시판</a></li>
  			<li><a class="nav-link" href="reviewboard.do">후기게시판</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">마이페이지</a>
            <div class="dropdown-menu" aria-labelledby="dropdown">
            <a class="dropdown-item" href="myinfo.do">회원정보</a>
              <a class="dropdown-item" href="main.do">로그아웃</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
	
<!-- main -->
<header>
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="navbar-brand">챌린지게시판</div>
	</nav>
	
<!-- 챌린지 전체보기 -->
	<div class="container">
	
	<!-- 챌린지 검색&등록 -->
	<!-- 검색하면 어떤 페이지 띄울것인지 -> 새 페이지 만들기 -->
		<form method="get" action="./sortedoutChallenge.jsp" class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="전체">전체</option>
				<option value="생활습관">생활습관</option>
				<option value="운동">운동</option>
				<option value="공부">공부</option>
				<option value="기타">기타</option>

			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="내용을 입력하세요.">
			<button type="submit" class="btn btn-primary mx-1 mt-2" href="./challenge.jsp">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">등록하기</a>
		</form>

<!-- 챌린지 -->
<c:forEach var="vo" items="${list}">
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left" style="font-weight:bold; font-size:1.3rem;">
						 <small>${vo.ch_id}</small> ${vo.ch_name} &nbsp;
					</div>
					<div class="col-4 text-right"><a class="btn btn-danger" data-toggle="modal"
							onclick="joinClicked(event)">참여</a></div>
				</div>
			</div>
			<div class="card-body">
				<p class="card-text">
					<span>START : ${vo.startdate}</span>
					<br><span>END : ${vo.enddate}</span>
					<br><span>정원수 : ${vo.num}</span>
				<br><p class="card-text">${vo.ch_content}</p>
			</div>

		</div>
</c:forEach>
	</div>
<!-- 페이지 이동 -->
<!-- 페이지 이동 get방식으로 할까 스크롤 다운으로 할까? -->
	<ul class="pagination justify-content-center mt-3">
		<li class="page-item"><a class="page-link" href="#">이전</a></li>
		<li class="page-item"><a class="page-link" href="#">다음</a></li>
	</ul>


<!-- 챌린지 등록하기 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">챌린지 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"> <!-- 9.24 첼린지입력 폼테그 -->
					<form action="challengewrite.do" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지명</label> <input type="text" name="challengeName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
						
						<div class="form-group col-sm-4">
                        <label>챌린지 시작 연도</label>
                        <select name="challengeStartYear" class="form-control">
                           <option value="2020">2020</option>
                           <option value="2021">2021</option>
                           <option value="2022">2022</option>
                           <option value="2023">2023</option>
                           <option value="2024">2024</option>
                           <option value="2025">2025</option>
                           <option value="2026">2026</option>
                           <option value="2027">2027</option>
                           <option value="2028">2028</option>
                           <option value="2029">2029</option>
                           <option value="2030">2030</option>
                           <option value="2031">2031</option>
                           <option value="2032">2032</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>시작 월</label>
                        <select name="challengeStartMonth" class="form-control">
                           <option value="1">01</option>
                           <option value="2">02</option>
                           <option value="3">03</option>
                           <option value="4">04</option>
                           <option value="5">05</option>
                           <option value="6">06</option>
                           <option value="7">07</option>
                           <option value="8">08</option>
                           <option value="9">09</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>시작 일</label>
                        <select name="challengeStartDay" class="form-control">
                           <option value="1">01</option>
                           <option value="2">02</option>
                           <option value="3">03</option>
                           <option value="4">04</option>
                           <option value="5">05</option>
                           <option value="6">06</option>
                           <option value="7">07</option>
                           <option value="8">08</option>
                           <option value="9">09</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                           <option value="13">13</option>
                           <option value="14">14</option>
                           <option value="15">15</option>
                           <option value="16">16</option>
                           <option value="17">17</option>
                           <option value="18">18</option>
                           <option value="19">19</option>
                           <option value="20">20</option>
                           <option value="21">21</option>
                           <option value="22">22</option>
                           <option value="23">23</option>
                           <option value="24">24</option>
                           <option value="25">25</option>
                           <option value="26">26</option>
                           <option value="27">27</option>
                           <option value="28">28</option>
                           <option value="29">29</option>
                           <option value="30">30</option>
                           <option value="31">31</option>
                        </select>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-sm-4">
                        <label>챌린지 마감 연도</label>
                        <select name="challengeEndYear" class="form-control">
                           <option value="2020">2020</option>
                           <option value="2021">2021</option>
                           <option value="2022">2022</option>
                           <option value="2023">2023</option>
                           <option value="2024">2024</option>
                           <option value="2025">2025</option>
                           <option value="2026">2026</option>
                           <option value="2027">2027</option>
                           <option value="2028">2028</option>
                           <option value="2029">2029</option>
                           <option value="2030">2030</option>
                           <option value="2031">2031</option>
                           <option value="2032">2032</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>마감 월</label>
                        <select name="challengeEndMonth" class="form-control">
                           <option value="1">01</option>
                           <option value="2">02</option>
                           <option value="3">03</option>
                           <option value="4">04</option>
                           <option value="5">05</option>
                           <option value="6">06</option>
                           <option value="7">07</option>
                           <option value="8">08</option>
                           <option value="9">09</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>마감 일</label>
                        <select name="challengeEndDay" class="form-control">
                           <option value="1">01</option>
                           <option value="2">02</option>
                           <option value="3">03</option>
                           <option value="4">04</option>
                           <option value="5">05</option>
                           <option value="6">06</option>
                           <option value="7">07</option>
                           <option value="8">08</option>
                           <option value="9">09</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                           <option value="13">13</option>
                           <option value="14">14</option>
                           <option value="15">15</option>
                           <option value="16">16</option>
                           <option value="17">17</option>
                           <option value="18">18</option>
                           <option value="19">19</option>
                           <option value="20">20</option>
                           <option value="21">21</option>
                           <option value="22">22</option>
                           <option value="23">23</option>
                           <option value="24">24</option>
                           <option value="25">25</option>
                           <option value="26">26</option>
                           <option value="27">27</option>
                           <option value="28">28</option>
                           <option value="29">29</option>
                           <option value="30">30</option>
                           <option value="31">31</option>
                        </select>
                     </div>
						
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>정원</label> <input type="text" name="limitNum"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea type="text" name="evaluationContent"
								class="form-control" maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>알람 요일</label> <input type="text" name="alarmDays"
									class="form-control" maxlength="50" placeholder="예) SUN/M/T/W/TH/F/SAT">
							</div>
							<div class="form-group col-sm-6">
								<label>알람 시간 (24시 단위)</label> <input type="text" name="alarmHour"
									class="form-control" maxlength="50" placeholder="예) 7/12/16/19/22/24">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>첨부파일</label> <input type="text" name="file"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="modal-footer">
							<input class="btn btn-primary" type="submit" onclick="newChallenge(event)" value="등록완료" style="color:white;">
							<button type="button" class="btn btn-secondary"	data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


<!-- 챌린지 구성원보기 -->
	<div class="modal fade" id="challViewModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
			<form action="challengecontent.do" method="get">
<input type ="hidden" name="h_id" value="${vo.ch_id}">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">${vo.ch_name}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>방장닉네임</label> <label>${vo.m_id}</label>
							</div>
						</div>
					<div class="form-row">
						<div class="form-group col-sm-6">
                        <label>${vo.startdate}-${vo.enddate}</label>
                     </div>
                  	</div>
					<div class="form-row">
						<div class="form-group col-sm-4">
							<label>${vo.num}</label>
						</div>
					</div>
						<div class="form-group">
							<div>${vo.ch_content}</div>
						</div>
						
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>${vo.file}</label>
							</div>
						</div>
						
						
						<canvas id="myhorizChart" width="400" height="200"></canvas>

							<script>
							
							var ctx = document.getElementById('myhorizChart');
							var myhorizChart = new Chart(ctx, {
								type: 'horizontalBar',
								data: {
									labels: ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
									datasets: [{
										label: '# OOO챌린지',
										data: [12, 18, 3, 5, 2, 3, 13],
										backgroundColor: [
											'rgba(255, 99, 132, 0.2)',
											'rgba(54, 162, 235, 0.2)',
											'rgba(255, 206, 86, 0.2)',
											'rgba(75, 192, 192, 0.2)',
											'rgba(153, 102, 255, 0.2)',
											'rgba(255, 159, 64, 0.2)',
											'rgba(153, 153, 153, 0.2)'
										],
										borderColor: [
											'rgba(255, 99, 132, 1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)',
											'rgba(153, 153, 153, 1)'
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
						
						</form>
					<div class="modal-footer">
				     	<input class="btn btn-warning" type="submit" onclick="joinClicked(event)" value="참여" style="color:white;">
						<button type="button" class="btn btn-secondary"	data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>


</header>

<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">Copyright ⓒ 2018 나동빈 All Rights Reserved.</footer>
<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
	
<script>	
		/*챌린지 등록 메소드*/
		function newChallenge(e){
					var m_id=0;
					if(!confirm('챌린지 등록을 완료하시겠습니까?')){
						e.preventDefault();
					}else{
						confirmed(e);
						return m_id;
					}
					}
		function confirmed(e){
					return alert('챌린지 등록 완료!')			
				}
		
		/*챌린지 참여 메소드*/
		function joinClicked(e){
			var m_id=0;
			if(!confirm('참여하시겠습니까?')){
				e.preventDefault();
			}else{
				joined(e);
				return m_id;
			}
			}
		function joined(e){
			return alert('참여 성공! 챌린지 시이작~')			
		}
</script>
	

</body>
</html>