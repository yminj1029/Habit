<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- ������ ���� ���Ѱ� -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-sacle=1, shrink-to-fit=no">

<!-- ��Ʈ��Ʈ�� CSS ���� �߰��ϱ� -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- Ŀ���� CSS ���� �߰��ϱ� -->
<link rel="stylesheet" href="./css/custom.css" />


<title>HABIT</title>
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
			<li><a class="nav-link" href="myhabit.jsp">���ǽ���</a></li>
      		<li><a class="nav-link" href="challenge.jsp">ç�����Խ���</a></li>
  			<li class="nav-item active"><a class="nav-link" href="review.jsp">�ı�Խ���</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">����������</a>
            <div class="dropdown-menu" aria-labelledby="dropdown">
            <a class="dropdown-item" href="myinfo.jsp">ȸ������</a>
              <a class="dropdown-item" href="index.jsp">�α׾ƿ�</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
</div>
	<!-- main -->
<header id="bg">
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="navbar-brand">�ı�Խ���</div>
	</nav>

	<!-- �ı⸮��Ʈ ��ü���� -->
	<div class="container">
		<!-- �ı⸮��Ʈ �˻�&��� -->
		<!-- �˻��ϸ� � ������ �������� -> �� ������ ����� -->
		<form method="get" action="./sortedoutReview.jsp">
			class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="��ü">��ü</option>
				<option value="��Ȱ����">��Ȱ����</option>
				<option value="�">�</option>
				<option value="����">����</option>
				<option value="��Ÿ">��Ÿ</option>

			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="������ �Է��ϼ���.">
			<button type="submit" class="btn btn-primary mx-1 mt-2">�˻�</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">����ϱ�</a>
		</form>

<!-- �ı� -->
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						����� {vo.r_title} &nbsp;<small>{vo.nickname}</small>
					</div>
					<div class="col-4 text-right">
					<span class="text-right" style="color: green;">(��õ: 15��)</span>
						<a class="btn btn-secondary" data-toggle="modal"
							href="#viewModal">�ڼ���</a>
					</div>
				</div>
			</div>
			<div class="card-body">
				<span class="card-text">{vo.r_date}�ı��ۼ���</span><br> 
				<span class="card-text">{vo.r_content}�ı⳻��</span><br>
			</div>
		</div>
	</div>
<!-- ������ �̵� -->
	<ul class="pagination justify-content-center mt-3">
		<li class="page-item"><a class="page-link" href="#">����</a></li>
		<li class="page-item"><a class="page-link" href="#">����</a></li>
	</ul>


<!-- �ı� ��� ������ -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�ı� ���</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="reviewwrite.do" method="get">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>�ı� ����</label> <input type="text" name="reviewName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>ç������</label> <input type="text" name="challengeName"
									class="form-control" maxlength="20">
							</div>
						</div>
					
						<div class="form-group">
							<label>����</label>
							<textarea type="text" name="reviewContent"
								class="form-control" maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>÷������</label> <input type="text" name="file"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="modal-footer"> 
							<input class="btn btn-primary" type="submit" onclick="reviewConfirmed(event)" value="�ı��ۼ� �Ϸ�" style="color:white;">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">���</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


<!-- �ı� �ڼ������� ������ -->
	<div class="modal fade" id="viewModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�ı� ����_{vo.r_name}</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./review.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>ç������</label>  <div>{vo.ch_name}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>�г���</label> <div>{vo.nickname}</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>ç���� ������</label>  <div>{vo.startDate}</div>
							</div>
				
						</div>
						<div class="form-group">
							<label>����</label> <div>{vo.r_content}</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>÷������</label>  <div>{vo.startDate}</div>
							</div>
						</div>
						<div class="modal-footer">
							<a class="btn btn-primary" onclick="return confirm('��õ�Ͻðڽ��ϱ�?')" href="./review.jsp">��õ</a>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">���</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</header>

		<footer class="mt-4 p-5 text-center"> Credit @ 2020 ������ 3�� ������ ���Ѽ� ������ �ȿ���. </footer>


<!-- javascript -->
	<!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/jquery.min.js"></script>
	<!-- ���� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/pooper.js"></script>
	<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/bootstrap.min.js"></script>
	<script>
		function reviewConfirmed(e){
					var m_id=0;
					if(!confirm('�ı� �ۼ��� �Ϸ��Ͻðڽ��ϱ�?')){
						e.preventDefault();
					}else{
						confirmed(e);
						return m_id;
					}
					}
		function confirmed(e){
					return alert('�ı� �ۼ� ����! ���������� �� �ı� ������ Ȯ���ϼ���~')			
				}
		</script>
</body>
</html>