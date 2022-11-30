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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick-theme.css">


<style>
.slick-prev{
	left: 15px;
    z-index: 1;
}
.slick-next{
	right: 15px;
    z-index: 1;
}
img{ height:250px; width:250px;
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
<body style="margin: 0; padding: 0;">

	<div style="width: 1100px; margin: 0 auto;">




		    <div id="slider-div" style="border: 1px solid green; width:100% ;height:275px" >
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

			
			<div
				style="border: 1px solid red; display: inline-block; flex-direction: row; flex-wrap: wrap; text-align: center; width: 1100px;">
				
			<c:forEach var="vo" items="${list}">
					<%-- <input type="hidden" name="pidx" value="${vo.pidx}"> --%>	
					<div onclick="location.href='pay2.do?pidx=${vo.pidx}'" style="float: left; width: 25%; margin: auto;">


						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/${vo.pmainimg}" />
						</div>
						<div>${vo.pidx}${vo.pname}</div>

						<div>${vo.pprice}원~</div>

						

					</div>
</c:forEach>
</div>

		</div>
		<!-- </form> -->
	
		
<!--     <script>
			function sang(){
/* 				alert(document.getElementById('abc').pidx.value); */
				
/* f.action="pay2.do";
				f.submit(); */
/* 				document.getElementById('abc').action="pay2.do"
location.href="pay2.do?pidx="pidx;
				document.getElementById('abc').submit();  */
			}
	</script> -->


</body>
</html>