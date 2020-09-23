<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>


<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<canvas id="mylineChart" width="400" height="400"></canvas>

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

</body>
</html>