<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!--     webapp까지의 경로       -->
</head>
<form id="dfg">
<div style="border: 1px solid green;overflow: auto;" id='schedule_html'>
   <table border="1" style="width:100%;">

    <tr>
    	<th>PIDX</th>
      <th>출/도착정보</th>
      <th>항공</th>
      <th>여행기간</th>
      <th>상품명</th>
      <th>상품가격</th>
      <th>비고</th>
    </tr>
    <c:forEach var="vo" items="${list3}">	
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

</form>

<!--     <script>
			function sang(){

				document.getElementById('dfg').action="pay3.do"
location.href="pay2.do?pidx="pidx;
				document.getElementById('dfg').submit(); 
			}
	</script> -->

</html>