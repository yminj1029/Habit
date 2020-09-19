<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">함께 만들어요! 습관!</h6>
		</div>
		
	<label>
	Search:
	<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
	<button type="button" >검색</button>
	<button type="button" >챌린지 시작</button>
	<button type="button" >나의 챌린지</button>
	</label>
	
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>그룹이름</th>
							<th>습관</th>
							<th>정원</th>
							<th>시작일</th>
							<th>마감일</th>
							<th>신청</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

</body>
</html>