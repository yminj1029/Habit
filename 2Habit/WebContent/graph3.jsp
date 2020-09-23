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

</body>
</html>