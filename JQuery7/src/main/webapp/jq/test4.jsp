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
		// 요소의 내용을 수정(가져오기) - html()
		var hValue = $('h2').html();
		//alert(hValue);
		//alert(hValue); head-0 (해당요소 중 첫번째 요소의 값)
		
		var tValue = $('h2').text();
		//alert(tValue);
		//alert(tValue); head-0 head-1 head-2 (해당 요소 모두 요소의 값)
		
		// h2태그에 내용 변경
		$('h2:last').html("아이티윌");
		$('h2').text("부산");
		
		// h2태그에 내용 변경(tag)
		$('h2').html("<h2> 아이티윌 </h2>");
		// => 실제 태그를 적용해서 내용을 변경
		
		//$('h2').text("<h2> 아이티윌 </h2>");
		// => 실제 태그를 적용X, 내용(문자) 그대로 변경
		
		//"아이티윌 부산교육센터 - h2 태그" 내용 변경
		$('h2').html(function(idx, oldHTML){
			//alert(idx+"/"+oldHTML)
			return oldHTML + "부산교육센터";
		});
		
		// 요소의 내용 추가 - append(), prepend()
		$('body').append("<h1> 뒤쪽에 추가 append() </h1>");
		$('body').prepend("<h1> 앞에 추가 prepend() </h1>");
		
		// 내용1 ~ 내용5
		$('div').append(function(idx){
			return idx+1;
		});
		
		// 자바스크립트(+제이쿼리) 에서는
		// [] 배열, {} 객체를 의미함 (JSON)
		
		// 배열 - 객체를 여러개 저장
		var contentArr = [
			{ name:"김학생", region:"부산" },
			{ name:"이학생", region:"서울" },
			{ name:"박학생", region:"대구" },
			{ name:"최학생", region:"제주" }
		];
		
		//alert(contentArr);
		console.log(contentArr);
		// 이학생의 지역정보 출력
		//alert("지역정보 : "+contentArr[1].region);
		
		// 배열의 정보를 테이블에 내용을 추가
		//$("table").append("<tr><td>"+contentArr[0].name+"</td><td>"+contentArr[0].region+"</td></tr>");
		//$("table").append("<tr><td>"+contentArr[1].name+"</td><td>"+contentArr[1].region+"</td></tr>");
		//$("table").append("<tr><td>"+contentArr[2].name+"</td><td>"+contentArr[2].region+"</td></tr>");
		//$("table").append("<tr><td>"+contentArr[3].name+"</td><td>"+contentArr[3].region+"</td></tr>");
		
		// => 리팩토링
		for(var i=0; i<contentArr.length; i++){
			$("table").append("<tr><td>"+contentArr[i].name+"</td><td>"+contentArr[i].region+"</td></tr>");
		}
		
		// $.each(data, callback함수) / $(data).each(callback함수) 함수

		$(contentArr).each(function(idx,item){
			//alert(idx+"/"+item);
			console.log(item);
			$("table").append("<tr><td>"+item.name+"</td><td>"+item.region+"</td></tr>");
		});
		// 아래와 동일한 표현
		
		$.each(contentArr,function(idx,item){
			$("table").append("<tr><td>"+item.name+"</td><td>"+item.region+"</td></tr>");
		});
		// 위와 동일한 표현
		
		// div 내용 1~5에 1~4까지 학생정보를 추가
		// ex) 내용1 - 이름 / 지역
		
		//$.each(contentArr, function(idx,item){
		//	$('div').append("-"+item.name+"/"+item.region);
		// });
		// => 내용 하나하나에 전부 추가됨
	
		$('div').append(function(idx){
			var item = contentArr[idx];
			return "-"+item.name+"/"+item.region;
		});
	
	});
	
	//jquery
	$(function(){
// 		setInterval(function(){
// 			console.log('itwill');
// 		},2000);
	$('img').css('width',200);
	$('img').css('height',200);
	
	setInterval(function(){
		$("#divImg").append($('img').first());
	},200);
	
	
	}); 
	//jquery

</script>
</head>
<body>
	<h1> test4 </h1>
	
	<h2> head-0 </h2>
	<h2> head-1 </h2>
	<h2> head-2 </h2>
	
	<hr>
	<!-- 내용1 ~ 내용5  -->
	<div> 내용 </div>
	<div> 내용 </div>
	<div> 내용 </div>
	<div> 내용 </div>
	<div> 내용 </div>
	
	<hr>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>지역</th>
			<!-- <td>기타</td> -->
		</tr>
	</table>
	
	
	<hr>
	
	<div id="divImg">
		<img src="mainslide01.jpg">
		<img src="mainslide02.jpg">
		<img src="mainslide03.jpg">	
	</div>
	
	
	
	
	
	
	
	
	
	

</body>
</html>