<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/calendar.css">
<style>
	img{ height:300px; width:400px;
}
</style>


</head>
<body style="margin: 0; padding: 0;">


	<div style="width: 1100px; margin: 0 auto;">

		<div style="overflow: auto; border: 1px solid red; s margin: 0">
			<div
				style="display: flex; margin: 0; overflow: hidden; height: 600px">
				<div style="border: 1px solid blue; float: left; width: 37%;">

					<div style="margin: 0; overflow: hidden; height: 100%;">
						<div
							style="margin: 0; height: 50%; overflow: hidden; border: 1px solid red; text-align: center; line-height: 300px;">
							
							
							<img
								src="${pageContext.request.contextPath}/resources/img/${vo.pmainimg}" /></div>
						<div
							style="margin: 0; height: 50%; overflow: hidden; border: 1px solid green; text-align: center; line-height: 300px;">
							${vo.pidx}</div>

					</div>
				</div>
				<div style="float: left; width: 63%; margin: 10px;">

					<div class="calendar">
						<div class="header">
							<div class="year-month"></div>
							<div class="nav">
								<button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
								<button class="nav-btn go-today" onclick="goToday()">Today</button>
								<button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
							</div>
						</div>
						<div class="main">
							<div class="days">
								<div class="day">일</div>
								<div class="day">월</div>
								<div class="day">화</div>
								<div class="day">수</div>
								<div class="day">목</div>
								<div class="day">금</div>
								<div class="day">토</div>
							</div>
							<div class="dates" style="height: 480px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

<div style="border: 1px solid green; height:800px; overflow: auto;" id='schedule_html'>
  <table border="1" style="width:100%;">

    <tr>
      <th>출/도착정보</th>
      <th>항공</th>
      <th>여행기간</th>
      <th>상품명</th>
      <th>상품가격</th>
      <th>비고</th>
    </tr>
    <c:forEach var="vo" items="${list}">	
    <tr onclick="location.href='pay3.do?pidx=${vo.pidx}&&${vo.pmainimg}&&${vo.pname}'">
      <td>${vo.pidx}</td>
      <td>${vo.pmove}</td>
      <td>${vo.pair}</td>
      <td>${vo.pperiod}</td>
      <td>${vo.pname}</td>
      <td>${vo.pprice}원</td>
      <td style="text-align:center;">★</td>
    </tr>

</c:forEach>
  </table> 

</div>

	</div>

	<script>
	
	function hello()  {

		alert('안녕하세요')
		
		
	}
	</script>

	<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
</body>
</html>