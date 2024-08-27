<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery 반드시 라이브러리 추가  -->
<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->
<!-- (CDN : Content Delivery Network) -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- 주의 : 여러개 추가 가능  -->

<script type="text/javascript">
	$(document).ready(function(){
		alert("jquery 실행!(1)");
	});
	
	$(function(){
		alert("jquery 실행!(2)");
	});
	
	alert("안녕하세요! JavaScript 실행 !");

	
</script>
</head>
<body>
	<h1> test1.jsp </h1>
	


</body>
</html>