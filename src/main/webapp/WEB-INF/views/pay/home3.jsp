<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 
<!-- Slick 불러오기 -->
<script src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick-theme.css">



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/body.css">


<style>


.slick-prev{
	left: 15px;
    z-index: 1;
}
.slick-next{
	right: 15px;
    z-index: 1;
}
img{ height:270px; width:270px;
}
.hideen1{
overflow:hidden;width:275px;
}
.slick-slide {
width: 275px;
}
.slick-cloned{
width: 275px;
}


</style>

<script>
	function send() {
		var num1 = document.getElementById('result1').innerText;
		var num2 = document.getElementById('result2').innerText;
		var num3 = document.getElementById('result3').innerText;
		alert(num1+ ", " + num2 + ", " + num3);
		location.href="pay4.do?oadultcount=" + num1 + "&okidscount=" + num2 + "&ochildcount=" + num3;
	}
</script>

<script>
          $(function(){
            $('#slider-div').slick({
            	  centerMode: true,
            	  centerPadding: '60px',
            	  slidesToShow: 3,
            	  responsive: [
            	    {
            	      breakpoint: 768,
            	      settings: {
            	        arrows: false,
            	        centerMode: true,
            	        centerPadding: '40px',
            	        slidesToShow: 3
            	      }
            	    },
            	    {
            	      breakpoint: 480,
            	      settings: {
            	        arrows: false,
            	        centerMode: true,
            	        centerPadding: '40px',
            	        slidesToShow: 1
            	      }
            	    }
            	  ]
            	});
/*             for(var i=0; i<$('.sang').length; i++){
            	$('.sang').eq(i).on("click",function(){
            		alert("asd");
            	})
            } */
            
          })
    </script>



</head>
<body style="margin:0;padding:0;">


	<div style="width: 1100px; margin: 0 auto;">
	
<div style="border: 1px solid red; height:350px;">

<div style="border: 1px solid blue; height: 15%;">

</div>

		    <div id="slider-div" style="border: 1px solid green; width:100% ; height: 85%" >
            <div ><img src="${pageContext.request.contextPath}/resources/img/main.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub1.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub2.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub3.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub4.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub5.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub6.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub7.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub8.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub9.jpg" /></div>
			<div><img src="${pageContext.request.contextPath}/resources/img/sub10.jpg" /></div>
			

          </div>



</div>


<div style="border:1px solid green; display:flex;">

<div style="border:1px solid red; width:70%; float:left;">

</div>

<div style="border:1px solid blue; width:30%; display:flex;">
<!-- <div>
<span>인원 선택 창</span>
</div> -->

<div style="width:100%;">

<div style="display:flex; width:100%;">

<div style="width:50%;">

<div style="border:1px solid red;">
<span>성인(만 12세 이상)</span>


</div>
<div style="border:1px solid green; ">

성인기준 : 100,000원

</div>


</div>
<div style="border:1px solid blue;width:50%; text-align:center; line-height:44px;text-align:center;">
					
					<button onclick='count("minus1")' style="width:25px; height:25px;text-align:center;">-</button>
					<span id='result1' style="margin:0 10px;">0 </span>
					<button onclick='count("plus1")' style="width:25px; height:25px;text-align:center;">+</button>
					

</div>
</div>

<div style="display:flex; width:100%;">

<div style="width:50%;">

<div style="border:1px solid red;">
<span>아동(만 12세 미만)</span>


</div>
<div style="border:1px solid green; ">

아동기준 : 90,000원

</div>


</div>
<div style="border:1px solid blue;width:50%; text-align:center; line-height:44px;text-align:center;">
					
					<button onclick='count("minus2")' style="width:25px; height:25px;text-align:center;">-</button>
					<span id='result2' style="margin:0 10px;">0 </span>
					<button onclick='count("plus2")' style="width:25px; height:25px;text-align:center;">+</button>
					

</div>
</div>
<div style="display:flex; width:100%;">

<div style="width:50%;">

<div style="border:1px solid red;">
<span>유아(만 2세 미만)</span>


</div>
<div style="border:1px solid green; ">

유아기준 : 80,000원

</div>


</div>
<div style="border:1px solid blue;width:50%; text-align:center; line-height:44px;text-align:center;">
					
					<button onclick='count("minus3")' style="width:25px; height:25px;text-align:center;">-</button>
					<span id='result3' style="margin:0 10px;">0 </span>
					<button onclick='count("plus3")' style="width:25px; height:25px;text-align:center;">+</button>
					

</div>
</div>
<div style="border:1px solid purple;">

</div>
<div style="border:1px solid purple;text-align:center;">
<button style="text-align:center" onclick="send()">예약하기</button>
</div>






</div> <!-- 세로 전체 묶은거 -->
</div> <!-- 세로 전체 묶은거 -->
</div> <!-- 전체 div 묶은거 -->
</div> <!-- 픽셀1000px 고정 -->



 <script>

 
 
function count(type)  {
  // 결과를 표시할 element
  const resultElement1 = document.getElementById('result1');
  const resultElement2 = document.getElementById('result2');
  const resultElement3 = document.getElementById('result3');
  
  // 현재 화면에 표시된 값
  let number1 = resultElement1.innerText;
  let number2 = resultElement2.innerText;
  let number3 = resultElement3.innerText;
  
  // 더하기/빼기
  
  switch(type) {
  case 'plus1' : 
	    number1 = parseInt(number1) + 1;
	    if(number1==10){
	    	number1=9;
	    }
      break;
  case 'minus1' : 
	    number1 = parseInt(number1) - 1;
	    if(number1==-1){
	    	number1=0;
	    }
      break;  
  case 'plus2' : 
	    number2 = parseInt(number2) + 1;
	    if(number2==10){
	    	number2=9;
	    }
    break;
case 'minus2' : 
	    number2 = parseInt(number2) - 1;
	    if(number2==-1){
	    	number2=0;
	    }
    break;  
case 'plus3' : 
   		number3 = parseInt(number3) + 1;
   		if(number3==10){
    		number3=9;
    }
  break;
case 'minus3' : 
    number3 = parseInt(number3) - 1;
    if(number3==-1){
    	number3=0;
    }
  break;  
      
  }
  
  
  // 결과 출력
  resultElement1.innerText = number1;
  resultElement2.innerText = number2;
  resultElement3.innerText = number3;


  
}

</script>



</body>
</html>