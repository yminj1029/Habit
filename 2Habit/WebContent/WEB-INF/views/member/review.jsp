<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <a class="navbar-brand" href="membermain.do">HABIT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
			<li><a class="nav-link" href="myhabit.do">나의습관</a></li>
      		<li><a class="nav-link" href="challengeboard.do">챌린지게시판</a></li>
  			<li class="nav-item active"><a class="nav-link" href="reviewboard.do">후기게시판</a>
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
</div>
	<!-- main -->
<header>
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
<c:forEach var="vo" items="${list}">
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left" style="font-weight:bold; font-size:1.3rem;">
						여기는 ${vo.r_title} &nbsp;<small>${vo.m_id}</small>
					</div>
					<div class="col-4 text-right">
					<span class="text-right" style="color: green;">(추천: 15★)</span>
						<a class="btn btn-secondary" data-toggle="modal"
							href="#viewModal">자세히</a>
					</div>
				</div>
			</div>
			<div class="card-body">
				<span class="card-text">${vo.r_date}후기작성일</span><br> 
				<span class="card-text">${vo.r_content}후기내용</span><br>
			</div>
		</div>
	</c:forEach>
	</div>

<!-- 페이지 이동 -->
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
					<form action="reviewwrite.do" method="get">
				<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>후기 제목</label> <input type="text" name="reviewtitle"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>챌린지ID</label> <input type="text" name="challengeID"
									class="form-control" maxlength="20">
							</div>
						</div>
					
						<div class="form-group">
							<label>내용</label>
							<textarea type="text" name="reviewContent"
								class="form-control" maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>첨부파일</label> <input type="text" name="file"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="modal-footer"> 
							<input class="btn btn-primary" type="submit" onclick="reviewConfirmed(event)" value="후기작성 완료" style="color:white;">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
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
					<h5 class="modal-title" id="modal">후기 제목_${vo.r_name}</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./review.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>리뷰명</label>  <div>${vo.r_title}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>ID</label> <div>${vo.m_id}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>날짜</label>  <div>${vo.r_date}</div>
							</div>
							<div class="form-group col-sm-6">
								<label>내용</label>  <div>${vo.r_content}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>첨부파일</label>  <div>${vo.r_file}</div>
							</div>
						</div>
						<div class="modal-footer">
							<a class="btn btn-primary" onclick="return confirm('추천하시겠습니까?')" href="./review.jsp">추천</a>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</header>

		<footer class="mt-4 p-5 text-center"> Credit @ 2020 빅데이터 3차 윤민지 박한성 정혜원 안예지. </footer>


<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
	<script>
		function reviewConfirmed(e){
					var m_id=0;
					if(!confirm('후기 작성을 완료하시겠습니까?')){
						e.preventDefault();
					}else{
						confirmed(e);
						return m_id;
					}
					}
		function confirmed(e){
					return alert('후기 작성 성공! 마이페이지 내 후기 모음을 확인하세요~')			
				}
		</script>
</body>
</html>