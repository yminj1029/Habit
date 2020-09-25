<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

	<meta charset="utf-8">

	<!-- ������ ���� ���Ѱ� -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-sacle=1, shrink-to-fit=no">
	<title>HABIT</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<!-- ��Ʈ��Ʈ�� CSS ���� �߰��ϱ� -->
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<!-- Ŀ���� CSS ���� �߰��ϱ� -->
	<link rel="stylesheet" href="./css/custom.css" />
	
	<!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/jquery.min.js"></script>
	<!-- ���� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/pooper.js"></script>
	<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
	<script src="./js/bootstrap.min.js"></script>

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
						href="myhabit.do">���ǽ���</a></li>
					<li><a class="nav-link" href="challengeboard.do">ç�����Խ���</a></li>
					<li><a class="nav-link" href="reviewboard.do">�ı�Խ���</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="dropdown"
						data-toggle="dropdown">����������</a>
						<div class="dropdown-menu" aria-labelledby="dropdown">
							<a class="dropdown-item" href="myinfo.do">ȸ������</a> <a
								class="dropdown-item" href="main.do">�α׾ƿ�</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>

<!-- �˶����� => ���Ͽ� ���缭 �˶� �︮�� ���� ����..-->
<script type="text/javascript">
	var alarmTimer = null;
	var alarmSet;
	function setAlarm()   { alarmSet = true;  }
	function clearAlarm() { alarmSet = false; }
	function initAlarm() {
	  if (alarmTimer!=null)clearInterval(alarmTimer);
	  var nowTime = new Date();
	  clearAlarm();
	  document.exf1.h.value = nowTime.getHours();
	  document.exf1.m.value = nowTime.getMinutes();
	  document.exf1.s.value = nowTime.getSeconds();
	  alarmTimer=setInterval("countTime()",1000);
	}
	function matchH() { return (document.exf1.ch.value == document.exf1.h.value); }
	function matchM() { return (document.exf1.cm.value == document.exf1.m.value); }
	function matchS() { return (document.exf1.cs.value == document.exf1.s.value); }
	function countTime() {
	  var nowTime = new Date();
	  document.exf1.ch.value = nowTime.getHours();
	  document.exf1.cm.value = nowTime.getMinutes();
	  document.exf1.cs.value = nowTime.getSeconds();
	  if (matchH() && matchM() && matchS()) {
		  showNotification();
	  }
	}
	onload=initAlarm;


/* notification */
	function showNotification(){
		const notification = new Notification("New message from REBIT", {
			body: "�ߺ�- �ָ���� �Ͼ! ������ ������ üũ�ϼ���",
			icon: "./images/rebitLogo.png"
		});
		notification.onclick=(e)=>{
			window.location.href="https://www.youtube.com/watch?v=2QLj17Hh1lA";
		}
	}
	
	// default, granted, denied
	console.log(Notification.permission);
	// setAlarm �ð��� �ڵ����� �ǵ��� ����! sysdate_dy.equals('vo.day')????? �˾Ƽ� �˶� ����������..
	if(Notification.permission==="granted"){
		setAlarm();
	}else if(Notification.permission!=="denied"){
		Notification.requestPermission().time(permission=>{
			if(permission==="granted"){
				showNotification();
			}
		})
	}
</script>

<!-- Main -->
<header>
	<div class="list" align="center">
	<!-- ���̺��� �������� ������ DB�� ����ִ� ����ŭ ��Ÿ���� -->
		
		<a class="btn btn-warning mx-1 mt-2" data-toggle="modal"
				href="#newHabit">�� ���� ���</a><br><br>
		
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingOne">
		      <h4 class="panel-title">
		        <a class="btn btn-info mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          �����ñ� </a></h4>
		    </div>
		    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		      <div class="panel-body">
		      	<div>
			      	<label>startDate: <br> endDate:</label>
			      	<form name=exf1>
						<B>�˶����� :</B>
						<input type=text name=h size=2>��  <input type=text name=m size=2> �� <input type=text name=s size=2>�� 
						<input type=button name=b onclick=setAlarm() value="Set Alarm"><input type=button name=r onclick=clearAlarm() value="Turn Alarm Off"><BR>
						<input type=hidden name=ch size=2><input type=hidden name=cm size=2><input type=hidden name=cs size=2>
					</form>
		      	</div>
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingTwo">
		      <h4 class="panel-title">
		        <a class="btn btn-secondary mx-1 mt-2" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		          12�� ��ħ
		        </a>
		      </h4>
		    </div>
		    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		      <div class="panel-body">
		      	<div>
			      	<label>startDate: <br> endDate:</label>
						<B>�˶����� :</B>
						<input type=text name=h size=2>��  <input type=text name=m size=2> �� <input type=text name=s size=2>�� 
						<input type=button name=b onclick=setAlarm() value="Set Alarm"><input type=button name=r onclick=clearAlarm() value="Turn Alarm Off"><BR>
						<input type=hidden name=ch size=2><input type=hidden name=cm size=2><input type=hidden name=cs size=2>
		      	</div>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	
	
	
	
<!-- ������ ����ϱ� -->
	<div class="modal fade" id="newHabit" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�� ���� ���</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./myhabit.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>������</label> <input type="text" name="challengeName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
						
						<div class="form-group col-sm-4">
                        <label>���� ���� ����</label>
                        <select name="challengeStartYear" class="form-control">
                           <option value="����" selected>����</option>
                           <option value="2020">2020</option>
                           <option value="2021">2021</option>
                           <option value="2022">2022</option>
                           <option value="2023">2023</option>
                           <option value="2024">2024</option>
                           <option value="2025">2025</option>
                           <option value="2026">2026</option>
                           <option value="2027">2027</option>
                           <option value="2028">2028</option>
                           <option value="2029">2029</option>
                           <option value="2030">2030</option>
                           <option value="2031">2031</option>
                           <option value="2032">2032</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>���� ��</label>
                        <select name="challengeStartMonth" class="form-control">
                           <option value="����" selected>����</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                           <option value="6">6</option>
                           <option value="7">7</option>
                           <option value="8">8</option>
                           <option value="9">9</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>���� ��</label>
                        <select name="challengeStartDay" class="form-control">
                           <option value="����" selected>����</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                           <option value="6">6</option>
                           <option value="7">7</option>
                           <option value="8">8</option>
                           <option value="9">9</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                           <option value="13">13</option>
                           <option value="14">14</option>
                           <option value="15">15</option>
                           <option value="16">16</option>
                           <option value="17">17</option>
                           <option value="18">18</option>
                           <option value="19">19</option>
                           <option value="20">20</option>
                           <option value="21">21</option>
                           <option value="22">22</option>
                           <option value="23">23</option>
                           <option value="24">24</option>
                           <option value="25">25</option>
                           <option value="26">26</option>
                           <option value="27">27</option>
                           <option value="28">28</option>
                           <option value="29">29</option>
                           <option value="30">30</option>
                           <option value="31">31</option>
                        </select>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-sm-4">
                        <label>���� ���� ����</label>
                        <select name="challengeEndYear" class="form-control">
                           <option value="����" selected>����</option>
                           <option value="2020">2020</option>
                           <option value="2021">2021</option>
                           <option value="2022">2022</option>
                           <option value="2023">2023</option>
                           <option value="2024">2024</option>
                           <option value="2025">2025</option>
                           <option value="2026">2026</option>
                           <option value="2027">2027</option>
                           <option value="2028">2028</option>
                           <option value="2029">2029</option>
                           <option value="2030">2030</option>
                           <option value="2031">2031</option>
                           <option value="2032">2032</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>���� ��</label>
                        <select name="challengeEndMonth" class="form-control">
                           <option value="����" selected>����</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                           <option value="6">6</option>
                           <option value="7">7</option>
                           <option value="8">8</option>
                           <option value="9">9</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                        </select>
                     </div>
                     <div class="form-group col-sm-4">
                        <label>���� ��</label>
                        <select name="challengeEndDay" class="form-control">
                           <option value="����"selected>����</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                           <option value="6">6</option>
                           <option value="7">7</option>
                           <option value="8">8</option>
                           <option value="9">9</option>
                           <option value="10">10</option>
                           <option value="11">11</option>
                           <option value="12">12</option>
                           <option value="13">13</option>
                           <option value="14">14</option>
                           <option value="15">15</option>
                           <option value="16">16</option>
                           <option value="17">17</option>
                           <option value="18">18</option>
                           <option value="19">19</option>
                           <option value="20">20</option>
                           <option value="21">21</option>
                           <option value="22">22</option>
                           <option value="23">23</option>
                           <option value="24">24</option>
                           <option value="25">25</option>
                           <option value="26">26</option>
                           <option value="27">27</option>
                           <option value="28">28</option>
                           <option value="29">29</option>
                           <option value="30">30</option>
                           <option value="31">31</option>
                        </select>
                     </div>
						
						</div>
						<div class="form-group">
							<label>����</label>
							<textarea type="text" name="evaluationContent"
								class="form-control" maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>�˶� ����</label> <input type="text" name="alarmDays"
									class="form-control" maxlength="50" placeholder="��) ��/ȭ/��/��/��/��/��">
							</div>
						</div>
						<div class="modal-footer">
							<input class="btn btn-primary" type="submit" onclick="newHabit(event)" value="��ϿϷ�" style="color:white;">
							<button type="button" class="btn btn-secondary"	data-dismiss="modal">���</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


<!-- �޷� -->
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
		    
		    //calendar �׸���
		    function drawCalendar(){
		        var setTableHTML = "";
		        setTableHTML+='<table class="calendar">';
		        setTableHTML+='<tr><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>';
		        for(var i=0;i<6;i++){
		            setTableHTML+='<tr height="120">';
		            for(var j=0;j<7;j++){
		                setTableHTML+='<td style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
		                setTableHTML+='<div class="cal-day"></div>';
		                setTableHTML+='<div class="cal-schedule"></div>';
		                setTableHTML+='</td>';
		            }
		            setTableHTML+='</tr>';
		        }
		        setTableHTML+='</table>';
		        $("#cal_tab").html(setTableHTML);
		    }
		 
		    //��¥ �ʱ�ȭ
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
		    
		    //calendar ��¥ǥ��
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
		 
		    //calendar �� �̵�
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

<!-- �׷��� -->
	<div class="graph">
	<br/><br/><br/><br/>
	<canvas id="mylineChart" width="700" height="500"></canvas>
		<script>
			var ctx = document.getElementById('mylineChart');
			var mylineChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ['�Ͽ���', '������', 'ȭ����', '������', '�����', '�ݿ���', '�����'],
					datasets: [{
						label: '# �ְ� ����',
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
	
<!-- �ְ� �׷��� -->
	<div class="total">
	<h4 style= "text-algin:center">�ְ� ����</h4>
	<canvas id="myChart" width="700" height="200"></canvas>
		<script>
			var ctx = document.getElementById('myChart');
			var myChart = new Chart(ctx, {
				type: 'bar',
				data: {
					labels: ['�Ͽ���', '������', 'ȭ����', '������', '�����', '�ݿ���', '�����'],
					datasets: [{
						label: '# �ְ� ����',
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
</header>


<script type="text/javascript">
	/*ç���� ��� �޼ҵ�*/
		function newHabit(e){
					var m_id=0;
					if(!confirm('ç���� ����� �Ϸ��Ͻðڽ��ϱ�?')){
						e.preventDefault();
					}else{
						confirmed(e);
						return m_id;
					}
					}
		function confirmed(e){
					return alert('ç���� ��� �Ϸ�!')	
				}
</script>


<script type="text/javascript">
var alarmTimer = null;
var alarmSet;
function setAlarm()   { alarmSet = true;  }
function clearAlarm() { alarmSet = false; }
function initAlarm() {
  if (alarmTimer!=null)clearInterval(alarmTimer);
  var nowTime = new Date();
  clearAlarm();
  document.exf1.h.value = nowTime.getHours();
  document.exf1.m.value = nowTime.getMinutes();
  document.exf1.s.value = nowTime.getSeconds();
  alarmTimer=setInterval("countTime()",1000);
}
function matchH() { return (document.exf1.ch.value == document.exf1.h.value); }
function matchM() { return (document.exf1.cm.value == document.exf1.m.value); }
function matchS() { return (document.exf1.cs.value == document.exf1.s.value); }
function countTime() {
  var nowTime = new Date();
  document.exf1.ch.value = nowTime.getHours();
  document.exf1.cm.value = nowTime.getMinutes();
  document.exf1.cs.value = nowTime.getSeconds();
  if (matchH() && matchM() && matchS()) {
	  showNotification();
  }
}
onload=initAlarm;


/* notification */

function showNotification(){
	const notification = new Notification("New message from REBIT", {
		body: "�ߺ�- �ָ���� �Ͼ! ������ ������ üũ�ϼ���",
		icon: "./images/rebitLogo.png"
	});
	notification.onclick=(e)=>{
		window.location.href="https://www.youtube.com/watch?v=2QLj17Hh1lA";
	}
}

// default, granted, denied
console.log(Notification.permission);
// setAlarm �ð��� �ڵ����� �ǵ��� ����! sysdate_dy.equals('vo.day')????? �˾Ƽ� �˶� ����������..
if(Notification.permission==="granted"){
	setAlarm();
}else if(Notification.permission!=="denied"){
	Notification.requestPermission().time(permission=>{
		if(permission==="granted"){
			showNotification();
		}
	})
}
</script>

</body>
</html>