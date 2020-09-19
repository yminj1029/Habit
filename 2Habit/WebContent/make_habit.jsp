<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="text-center">
		<h1 class="h4 text-gray-900 mb-4">습관 만들기</h1>
	</div>
	<form class="user">
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleFirstName" placeholder="챌린지 이름">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleStartDate" placeholder="시작 날짜">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleEndDate" placeholder="끝 날짜">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleAlarmTime" placeholder="알림 갈 시간">
			</div>
		</div>
		<a href="login.html" class="btn btn-primary btn-user btn-block">
			챌린지 만들기 </a>
	</form>

</body>
</html>