<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

<meta charset="utf-8">

<!-- 반응형 웹에 관한것 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-sacle=1, shrink-to-fit=no">
<title>HABIT</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 부트스트랩 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<!-- 커스텀 CSS 만들어서 추가하기 -->
<link rel="stylesheet" href="./css/custom.css" />

<title>myHabit</title>
<style>

body{
      background-image: url('./images/bgimg.jpg');
      background-attachment: fixed;
      background-repeat: no-repeat;
      width: 100%;
      height: 100%;
   	  background-size:cover;

   }


</style>

<script language="javascript">

	function view(str) {
		var obj = document.getElementById(str);

		if (obj.style.display == "")
			obj.style.display = "none";
		else
			obj.style.display = "";
	}
</script>

</head>
<body>

	<div id="content">
		<!-- Top bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="membermain.do">HABIT</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="myhabit.do">나의습관</a></li>
					<li><a class="nav-link" href="challengeboard.do">챌린지게시판</a></li>
					<li><a class="nav-link" href="reviewboard.do">후기게시판</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="dropdown"
						data-toggle="dropdown">마이페이지</a>
						<div class="dropdown-menu" aria-labelledby="dropdown">
							<a class="dropdown-item" href="myinfo.do">회원정보</a> <a
								class="dropdown-item" href="main.do">로그아웃</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>


	<!-- Main -->
	<header>
	<!-- 방법1 -->
	<!-- <div id="wrapper"> -->
	<!-- <div> -->
	<div class="list" align="center">
	<a href="" style="text-align: left; color: black" ><h2>습관생성</h2></a></br>
	<!-- 테이블을 포문으로 돌려서 DB에 들어있는 수만큼 나타내기 -->
	
		<table>
			<a href="javascript:view('viewcode');"></a>
			<tr id="viewcode" style="display: none;">
				<td>Start : 20/09/01</br>
				End : 20/10/01</br>
				Alarm : 15:00</td>
				</tr>
		</table>
				<table>
			<a href="javascript:view('viewcode1');">물마시기</a>
			<tr id="viewcode1" style="display: none;">
				<td>Start : 20/09/01</br>
				End : 20/10/01</br>
				Alarm : 15:00</td>
				</tr>
		</table>
	</div>
	
	
	<!-- 달력 -->
	<div class="calendar1">
   <div class="cal_top">
        <a href="#" id="movePrevMonth"><span id="prevMonth" class="cal_tit">&lt;</span></a>
        <span id="cal_top_year"></span>
        <span id="cal_top_month"></span>
        <a href="#" id="moveNextMonth"><span id="nextMonth" class="cal_tit">&gt;</span></a>
    </div>
    <div id="cal_tab" class="cal">
    </div>
 
	<script type="text/javascript">
	    
	    var today = null;
	    var year = null;
	    var month = null;
	    var firstDay = null;
	    var lastDay = null;
	    var $tdDay = null;
	    var $tdSche = null;
	 
	    $(document).ready(function() {
	        drawCalendar();
	        initDate();
	        drawDays();
	        $("#movePrevMonth").on("click", function(){movePrevMonth();});
	        $("#moveNextMonth").on("click", function(){moveNextMonth();});
	    });
	    
	    //calendar 그리기
	    function drawCalendar(){
	        var setTableHTML = "";
	        setTableHTML+='<table class="calendar">';
	        setTableHTML+='<tr><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>';
	        for(var i=0;i<6;i++){
	            setTableHTML+='<tr height="120">';
	            for(var j=0;j<7;j++){
	                setTableHTML+='<td style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
	                setTableHTML+='    <div class="cal-day"></div>';
	                setTableHTML+='    <div class="cal-schedule"></div>';
	                setTableHTML+='</td>';
	            }
	            setTableHTML+='</tr>';
	        }
	        setTableHTML+='</table>';
	        $("#cal_tab").html(setTableHTML);
	    }
	 
	    //날짜 초기화
	    function initDate(){
	        $tdDay = $("td div.cal-day")
	        $tdSche = $("td div.cal-schedule")
	        dayCount = 0;
	        today = new Date();
	        year = today.getFullYear();
	        month = today.getMonth()+1;
	        firstDay = new Date(year,month-1,1);
	        lastDay = new Date(year,month,0);
	    }
	    
	    //calendar 날짜표시
	    function drawDays(){
	        $("#cal_top_year").text(year);
	        $("#cal_top_month").text(month);
	        for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
	            $tdDay.eq(i).text(++dayCount);
	        }
	        for(var i=0;i<42;i+=7){
	            $tdDay.eq(i).css("color","red");
	        }
	        for(var i=6;i<42;i+=7){
	            $tdDay.eq(i).css("color","blue");
	        }
	    }
	 
	    //calendar 월 이동
	    function movePrevMonth(){
	        month--;
	        if(month<=0){
	            month=12;
	            year--;
	        }
	        if(month<10){
	            month=String("0"+month);
	        }
	        getNewInfo();
	        }
	    
	    function moveNextMonth(){
	        month++;
	        if(month>12){
	            month=1;
	            year++;
	        }
	        if(month<10){
	            month=String("0"+month);
	        }
	        getNewInfo();
	    }
	
	    
	    function getNewInfo(){
	        for(var i=0;i<42;i++){
	            $tdDay.eq(i).text("");
	        }
	        dayCount=0;
	        firstDay = new Date(year,month-1,1);
	        lastDay = new Date(year,month,0);
	        drawDays();
	    }
	</script>
</div>

	<!-- 그래프 -->
	<div class="graph">
	<br/><br/><br/><br/>
	<canvas id="mylineChart" width="700" height="500"></canvas>
		<script>
			var ctx = document.getElementById('mylineChart');
			var mylineChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
					datasets: [{
						label: '# 주간 습관',
						data: [12, 18, 3, 5, 2, 3, 13],
						backgroundColor: 'rgba(102, 102, 204, 0.2)',
						borderColor: 'rgba(000, 000, 102, 1)',
						borderWidth: 1,
						lineTension: 0
					}]
				},
				options: {
					responsive: false,
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero: true
							}
						}]
					},
				}
			});
		</script>
	 	</div>
	
	<!-- 주간 그래프 -->

	
	
	<div class="total">
	<h4 style= "text-algin:center">주간 습관</h4>
	<canvas id="myChart" width="700" height="200"></canvas>
		<script>
			var ctx = document.getElementById('myChart');
			var myChart = new Chart(ctx, {
				type: 'bar',
				data: {
					labels: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
					datasets: [{
						label: '# 주간 습관',
						data: [12, 18, 3, 5, 2, 3, 13],
						backgroundColor: [
							'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 159, 64, 0.2)',
							'rgba(153, 153, 153, 0.2)'
						],
						borderColor: [
							'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)',
							'rgba(255, 159, 64, 1)',
							'rgba(153, 153, 153, 1)'
						],
						borderWidth: 1
					}]
				},
				options: {
					responsive: false,
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero: true
							}
						}]
					},
				}
			});
		</script>
	
	</div>


	<!-- 방법2 -->
	</header>

	<!-- javascript -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/pooper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>


</body>
</html>