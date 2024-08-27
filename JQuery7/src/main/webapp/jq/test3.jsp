<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<script type="text/javascript">
$(function(){
	
	// 특정 요소의 속성의 값을 가져오기
	// var c = $('h2').css('color');
	// alert(c);
	
	// 특정 요소의 속성의 값을 변경하기
	$('h2').css('color','green');
	// $('h2:first').css('color','yellow');
	// $('h2:last').css('color','red');
	
	// function 속성을 사용하여 값 변경
	var colorArr = ["red","orange","yellow"];
	// $('h2').css('color',colorArr[1]);
	$('h2').css('color',function(index,value){
		//alert(index +"/"+ value);
		return colorArr[index];
	});
	
	$('h2').css('background','black');
	
	// 한번에 다양한 속성정보를 변경
	$('h2').css({
		// "속성" : "값"
		color : 'red',
		background : 'yellow'
	});
	
	// 글자색(빨,주,노) + 배경색(검)
	$('h2').css({
		color : function(idx){
			return colorArr[idx];
		},
		background : 'black'
	});
	
	//////////////////////////////
	// 태그 속성에 접근제어 attr()
	
	var imgValue = $('img').attr("src");
	alert(imgValue);
	
	$('img').attr("src","mainslide02.jpg");
	
	
});
</script>
</head>
<body>	
	<h1> test3.jsp </h1>
	
	<h2> head-0 </h2>
	<h2> head-1 </h2>
	<h2> head-2 </h2>
	
	<h2> head-3 </h2>
	
	<h3> head-4 </h3>
	
	<hr>
	<img src="mainslide01.jpg">
	<img src="mainslide02.jpg">
	<img src="mainslide03.jpg">

	

</body>
</html>