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
		<h1 class="h4 text-gray-900 mb-4">�ı� �ۼ�</h1>
	</div>

	<div id="board">
		<form action="WriterBoard" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>����</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td colspan="2">����</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="content" rows="10"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="�ʱ�ȭ"> <input
						type="submit" value="�ۼ��ϱ�"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>