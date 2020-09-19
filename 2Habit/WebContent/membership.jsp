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
		<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
	</div>
	<form class="user">
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleFirstName" placeholder="아이디">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleLastName" placeholder="닉네임">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="password" class="form-control form-control-user"
					id="exampleInputPassword" placeholder="Password">
			</div>
			<div class="col-sm-6">
				<input type="password" class="form-control form-control-user"
					id="exampleRepeatPassword" placeholder="Repeat Password">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleName" placeholder="이름">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="examplePhoneNumber" placeholder="전화번호">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleSex" placeholder="성별">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleJob" placeholder="직업">
			</div>
		</div>
		<div class="form-group">
			<input type="email" class="form-control form-control-user"
				id="exampleInputEmail" placeholder="Email Address">
		</div>
		<div class="form-group">
			<input type="text" class="form-control form-control-user"
				id="exampleHabitCategory" placeholder="습관 선택">
		</div>
		<a href="login.html" class="btn btn-primary btn-user btn-block">회원가입
		</a>
	</form>
</body>
</html>