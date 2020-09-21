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

<!-- 부트스트랩 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- 커스텀 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/custom.css" />


<title>HABIT</title>
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
			<li><a class="nav-link" href="myhabit.jsp">나의습관</a></li>
      		<li><a class="nav-link" href="challenge.jsp">챌린지게시판</a></li>
  			<li class="nav-item active"><a class="nav-link" href="review.jsp">후기게시판</a>
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

	<!-- main -->
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="navbar-brand">후기게시판</div>
	</nav>

	<!-- 후기리스트 전체보기 -->
	<div class="container">

		<!-- 후기리스트 검색&등록 -->
		<!-- 검색하면 어떤 페이지 띄울것인지 -> 새 페이지 만들기 -->
		<form method="get" action="./sortedoutReview.jsp"
			class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="전체">전체</option>
				<option value="생활습관">생활습관</option>
				<option value="운동">운동</option>
				<option value="공부">공부</option>
				<option value="기타">기타</option>

			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="내용을 입력하세요.">
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">등록하기</a>
		</form>

		<!-- 후기1개 -->
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						여기는 {vo.r_title} &nbsp;<small>{vo.nickname}</small>
					</div>
					<div class="col-4 text-right">
						<a class="btn btn-secondary" data-toggle="modal"
							href="#viewModal">자세히</a>
					</div>
				</div>
			</div>
			<div class="card-body">
				<span class="card-text">{vo.r_date}후기작성일</span><br> 
				<span class="card-text">{vo.r_content}후기내용</span>
			</div>
		</div>

		<!-- 후기2개 -->
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						여기는 {vo.r_title} &nbsp;<small>{vo.nickname}</small>
					</div>
					<div class="col-4 text-right">
						<a class="btn btn-secondary" data-toggle="modal" href="#registerModal">자세히</a>
					</div>
				</div>
			</div>
			<div class="card-body">
				<span class="card-text">{vo.r_date}후기작성일</span><br> <span class="card-text">{vo.r_content}후기내용</span>
			</div>
		</div>

		<!-- 후기3개 -->
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						여기는 {vo.r_title} &nbsp;<small>{vo.nickname}</small>
					</div>
					<div class="col-4 text-right">
						<a class="btn btn-secondary" data-toggle="modal"
							href="#registerModal">자세히</a>
					</div>
				</div>
			</div>
			<div class="card-body">
				<span class="card-text">{vo.r_date}후기작성일</span><br> <span
					class="card-text">{vo.r_content}후기내용</span>
			</div>
		</div>


	</div>

	<!-- 페이지 이동 -->
	<!-- 페이지 이동 get방식으로 할까 스크롤 다운으로 할까? -->
	<ul class="pagination justify-content-center mt-3">
		<li class="page-item"><a class="page-link" href="#">이전</a></li>
		<li class="page-item"><a class="page-link" href="#">다음</a></li>
	</ul>


<!-- 후기 등록 페이지 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">후기 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./reviewRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>후기 제목</label> <input type="text" name="reviewName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지명</label> <input type="text" name="challengeName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지 시작일</label> <input type="text" name="chall_startdate"
									class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>챌린지 마감일</label> <input type="text" name="chall_enddate"
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
								<label>첨부파일</label> <input type="text" name="file"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">등록하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


<!-- 후기 자세히보기 페이지 -->
	<div class="modal fade" id="viewModal" tabindex="-1" role="dialog"
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
					<form action="./reviewRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지명</label>  <div>{vo.ch_name}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>닉네임</label> <div>{vo.nickname}</div>
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
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">수정하기</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


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