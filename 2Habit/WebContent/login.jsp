<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <title>HABIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- 부트스트랩 CSS 추가하기 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- 커스텀 CSS 추가하기 -->
    <link rel="stylesheet" href="./css/custom.css">
    
    <style type="text/css">
    	html, body{
    		width : 100%;
    		height : 100%;
    	}
    	.footer{
    		position: absolute;
    		bottom : 0;
    		width : 100%
    	}
    </style>
  </head>

  <body>
  
	 <div id="content">
		<!-- Top bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.jsp">HABIT</a>
		</nav>
	</div>
	<br><br><br><br><br>
    <div class="container mt-3" style="max-width: 560px;">

      <form method="post" action="./myhabit.jsp">
        <div class="form-group">
          <label>아이디</label>
          <input type="text" name="userID" class="form-control">
        </div>
        <div class="form-group">
          <label>비밀번호</label>
          <input type="password" name="userPassword" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">로그인</button>
     	<a class="btn btn-secondary" href="register.jsp">회원가입</a>
      </form>
    </div>

    <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
      Copyright ⓒ 2018 나동빈 All Rights Reserved.
    </footer>

<!-- javascript -->
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="./js/jquery.min.js"></script>
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="./js/popper.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>