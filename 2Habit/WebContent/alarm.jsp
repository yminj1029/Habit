<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
 %>

<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE>BLUE-B</TITLE>
</head>
<body>

<form name=exf1>
<B>알람설정 :</B>
<input type=text name=h size=2>시  <input type=text name=m size=2> 분 <input type=text name=s size=2>초 
<input type=button name=b onclick=setAlarm() value="Set Alarm"><input type=button name=r onclick=clearAlarm() value="Turn Alarm Off"><BR>
<B>현재시간 :</B> 
<input type=text name=ch size=2>시<input type=text name=cm size=2>분 <input type=text name=cs size=2>초
</form>

<script>
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
    alert("뚜뚜뚜뚜...일어나세요... ");
  }
}
onload=initAlarm;

</script>

<script type="text/javascript">
/* notification */

function showNotification(){
	const notification = new Notification("New message from O&O", {
		body: "삐빅- 주먹쥐고 일어서! 오늘의 습관을 체크하세요",
		icon: "https://127.0.0.1:8081/images/bada.jpg"
	});
	notification.onclick=(e)=>{
		window.location.href="https://google.com";
	}
}

// default, granted, denied
console.log(Notification.permission);

if(Notification.permission==="granted"){
	showNotification();
}else if(Notification.permission!=="denied"){
	Notification.requestPermission().time(permission=>{
		if(permission==="granted"){
			showNotification();
		}
	})
}
</script>





<!-- 요일 알람 -->
<script>
timepickerdialog = new TimePickerDialog(AddAlarmActivity.this,
        new TimePickerDialog.OnTimeSetListener() {

    @Override
    public void onTimeSet(TimePicker view, int hourOfDay,
                          int minute) {

        Calendar ca = Calendar.getInstance();
        ca.set(Calendar.HOUR_OF_DAY,hourOfDay);
        ca.set(Calendar.MINUTE,minute);
        ca.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        ca.set(Calendar.SECOND, 0);
        ca.set(Calendar.MILLISECOND, 0);

        AlarmManager alarmManager;
        alarmManager = (AlarmManager) AddAlarmActivity.this.getSystemService(ALARM_SERVICE);
        Intent intent;

        intent = new Intent(AddAlarmActivity.this, AlarmReceiver.class);
        pendingIntent = PendingIntent.getBroadcast(AddAlarmActivity.this, 0, intent, 0);
        alarmManager.setRepeating(AlarmManager.RTC_WAKEUP, ca.getTimeInMillis(), 1000*60*60*24, pendingIntent);
    
        calendar.add(Calendar. Date, 1);
    }
    };

</script>

</body>
</html>