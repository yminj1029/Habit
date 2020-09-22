<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

<script language="javascript">
	function view(str) {
		var obj = document.getElementById(str);

		if (obj.style.display == "")
			obj.style.display = "none";
		else
			obj.style.display = "";
	}
</script>

<style>

.cal_top{
    text-align: center;
    font-size: 30px;
}
.cal{
    text-align: center;    
}
table.calendar{
    border: 1px solid black;
    display: inline-table;
    text-align: left;
}
table.calendar td{
    vertical-align: top;
    border: 1px solid skyblue;
    width: 100px;
}

.calendar1 {
	border: 1px solid red;
	width: 50%;
	height: 600px;
	float: left;
}

.graph {
	border: 1px solid yellow;
	width: 30%;
	height: 600px;
	float: left;
}

.weekly {
	border: 1px solid black;
	width: 50%;
	height: 200px;
	letter-spacing: 5px;
	text-align: center;
	line-height: 300px;
	float: left;
}

.total {
	border: 1px solid green;
	width: 30%;
	height: 200px;
	letter-spacing: 5px;
	text-align: center;
	line-height: 300px;
	float: left;
}

.list {
	border: 1px solid pink;
	width: 20%;
	height: 800px;
	float: left;
}
</style>

</head>
<body>

	<div id="content">
		<!-- Top bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index5.jsp">HABIT</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="myhabit.jsp">나의습관</a></li>
					<li><a class="nav-link" href="challenge.jsp">챌린지게시판</a></li>
					<li><a class="nav-link" href="review.jsp">후기게시판</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="dropdown"
						data-toggle="dropdown">마이페이지</a>
						<div class="dropdown-menu" aria-labelledby="dropdown">
							<a class="dropdown-item" href="myinfo.jsp">회원정보</a> <a
								class="dropdown-item" href="index2.jsp">로그아웃</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>

	<!-- Main -->
	<header id="bg">
	<!-- 방법1 -->
	<!-- <div id="wrapper"> -->
	<!-- <div> -->
	<div class="list" align="center">
	<!-- 테이블을 포문으로 돌려서 DB에 들어있는 수만큼 나타내기 -->
		<table>
			<a href="javascript:view('viewcode');">물마시기</a>
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
	<div class="calendar1">
   <div class="cal_top">
        <a href="#" id="movePrevMonth"><span id="prevMonth" class="cal_tit">&lt;</span></a>
        <span id="cal_top_year"></span>년
        <span id="cal_top_month"></span>월
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
        $("#movePrevMonth1").on("click", function(){movePrevMonth1();});
        $("#moveNextMonth1").on("click", function(){moveNextMonth1();});
    });
    
    //calendar 그리기
    function drawCalendar(){
        var setTableHTML = "";
        setTableHTML+='<table class="calendar">';
        setTableHTML+='<tr><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>';
        for(var i=0;i<6;i++){
            setTableHTML+='<tr height="80">';
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
    
    //calendar(주차) 월 이동
    function movePrevMonth1(){
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
    
    function moveNextMonth1(){
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
    function getNewInfo1(){
        for(var i=0;i<7;i++){
            $tdDay.eq(i).text("");
        }
        dayCount=0;
        firstDay = new Date(year,month-1,1);
        lastDay = new Date(year,month,0);
        drawDays();
    }
</script>
</div>
	<div class="graph"> 그래프 자리할곳</div>
	<div class="weekly">
		<table>
		<tr><td>
	    <a href="#" id="movePrevMonth1"><span id="prevMonth1" class="cal_tit1">&lt;</span></a>
        <span id="cal_top_year1"></span>년
        <span id="cal_top_month1"></span>월
        <a href="#" id="moveNextMonth1"><span id="nextMonth1" class="cal_tit1">&gt;</span></a></td>
</tr>
	<tr><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>
	<tr><td></td>
	</tr>
	</table>
	</div>
	<div class="total">total</div>
	<!-- </div> -->
	<!-- </div> -->

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