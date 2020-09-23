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

<canvas id="myhorizChart" width="400" height="400"></canvas>

<script>

var ctx = document.getElementById('myhorizChart');
var myhorizChart = new Chart(ctx, {
	type: 'horizontalBar',
	data: {
		labels: ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
		datasets: [{
			label: '# OOO챌린지',
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
			xAxes: [{
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