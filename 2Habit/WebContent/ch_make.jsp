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
		<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
	</div>
	<form class="user">
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleFirstName" placeholder="ç���� �̸�">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleLastName" placeholder="����">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleStartDate" placeholder="���� ��¥">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleEndDate" placeholder="�� ��¥">
			</div>
		</div>
		<div class="form-group">
			<input type="text" class="form-control form-control-user"
				id="exampleContent" placeholder="����">
		</div>
		<div class="form-group row">
			<div class="col-sm-6 mb-3 mb-sm-0">
				<input type="text" class="form-control form-control-user"
					id="exampleAlarmTime" placeholder="�˸� �� �ð�">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-user"
					id="exampleFile" placeholder="File">
			</div>
		</div>
		<a href="login.html" class="btn btn-primary btn-user btn-block">
			ç���� ����� </a>
	</form>
</body>
</html>