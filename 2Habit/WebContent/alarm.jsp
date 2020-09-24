<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%  %>

<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE>BLUE-B</TITLE>
</head>
<body>

<form name=exf1>
<B>¾Ë¶÷¼³Á¤ :</B>
<input type=text name=h size=2>½Ã  <input type=text name=m size=2> ºÐ <input type=text name=s size=2>ÃÊ 
<input type=button name=b onclick=setAlarm() value="Set Alarm"><input type=button name=r onclick=clearAlarm() value="Turn Alarm Off"><BR>
<B>ÇöÀç½Ã°£ :</B> 
<input type=text name=ch size=2>½Ã<input type=text name=cm size=2>ºÐ <input type=text name=cs size=2>ÃÊ
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
    alert("¶Ñ¶Ñ¶Ñ¶Ñ...ÀÏ¾î³ª¼¼¿ä... ");
  }
}
onload=initAlarm;

</script>

<script type="text/javascript">
/* notification */

function showNotification(){
	const notification = new Notification("New message from O&O", {
		body: "»ßºò- ÁÖ¸ÔÁã°í ÀÏ¾î¼­! ¿À´ÃÀÇ ½À°üÀ» Ã¼Å©ÇÏ¼¼¿ä",
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


</body>
</html>