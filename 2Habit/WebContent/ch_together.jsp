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
			<h6 class="m-0 font-weight-bold text-primary">�Բ� ������! ����!</h6>
		</div>
		
	<label>
	Search:
	<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
	<button type="button" >�˻�</button>
	<button type="button" >ç���� ����</button>
	<button type="button" >���� ç����</button>
	</label>
	
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>�׷��̸�</th>
							<th>����</th>
							<th>����</th>
							<th>������</th>
							<th>������</th>
							<th>��û</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

</body>
</html>