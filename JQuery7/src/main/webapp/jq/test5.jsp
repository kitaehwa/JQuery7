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
		//$("h2").css("background", "yellow");
		
		// addClass() : 특정 요소에 클래스명을 설정
		// h2태그에 각각 알맞는 클래스명을 설정
		// $('h2').addClass("high_0");
// 		$('h2').addClass(function(idx){
// 			return "high_"+idx;
// 		});
		
// 		$("h2").each(function(idx,item){
// 			$(this).addClass("high_"+idx);
// 		});
		
		// this 레퍼런스 : 나 자신을 나타내는 레퍼런스
		//					+ 특정동작(이벤트)이 실행되는 요소(객체)
		//					사용자가 페이지에 방문해서 이벤트(동작)을 처리할 때 그 대상
		
		//////////////////////////////////////
		$('input').bind("click", function(){
			//alert("jquery 클릭!");
		});
		
		$('input').click(function(){
			//alert("jquery 클릭!(click)");
			
			$("h2").each(function(idx,item){
				//alert(Math.random());
				var randomIDX=Math.floor(Math.random()*5);
				$(this).addClass("high_"+randomIDX);
			});	
		});
		
// 		$('input').on("click",function(){
// 			alert("클릭 이벤트 on()");
// 		});
		
		// 이벤트(event) : 브라우저에서 방문객이 발생시키는 모든동작
		
		// 마우스 이벤트
		// 클릭 이벤트
		//$('img').click();
		//$('img').on("click");
		
		var status = true; // true : 1 -> 2 // false : 2 -> 1
		$('img').click(function(){
			// 클릭 했을때 이미지를 변경
			// -> 이미지태그의 속성(src) 변경
			
			// 사진1 -> 클릭 -> 사진2 -> 클릭 -> 사진1
			if(status){
				$('img').attr('src','2.jpg');
				status = false;			
			}else{
				$('img').attr('src','1.jpg');	
				status = true;
			}
		});
		
// 		$('img').on("mouseover",function(){
			
// 			//alert("mouseover 이벤트 발생!")
// 			$('img').attr("src","cup-1.jpg")
// 		});
		
// 		$('img').on("mouseout",function(){
			
// 			//alert("mouseover 이벤트 발생!")
// 			$('img').attr("src","cup-2.jpg")
// 		});
		
		// => $('img').mouseover().mouseout();
		// => 체이닝 기법
		$('img').mouseover(function(){
			$('img').attr("src","cup-1.jpg");
		}).mouseout(function(){
			$('img').attr("src","cup-2.jpg");
		});
		
		// h2태그 클릭시 "+" 기호 하나씩 추가
		$('h2').click(function(){
			//$('h2').append('+');
			// 내가 선택한 대상(요소태그)만 +를 추가
			$(this).append('+');
		});		
		
		// 키보드 이벤트
		$('textarea').on('keyup',function(){
			//alert('keyup!');
			// 입력된 글자수 가져오기
			//var contents = $('textarea').html();
			//var contents = $('textarea').text();
			var contents = $('textarea').val();
			//alert(contents.length);
			
			// id='txtCnt' 요소(태그)에 숫자를 변경
			$('#txtCnt').html(200 - contents.length);
			
			// 200자 이내 작성시 검정색 글씨로 카운트 숫자 표현
			if(200-contents.length < 0){
				$("textarea").css('color','red');
				$("#txtCnt").css('color','red');
			}else{
				$("textarea").css('color','black');
				$("#txtCnt").css('color','black');
			};
			
			// 200자 초과 작성시 빨간색 글씨로 카운트 숫자 표현
			
		});
		
		// 폼태그 정보 제어
		// * 아이디, 비밀번호가 하나라도 입력 안되면 정보전송(submit) X
		
		// click / submit
		$("#fr").submit(function(){
			//alert("submit() 실행");
			var id = $("#id").val();
			var pw = $("#pw").val();
			
			if(id == ""){
				alert("아이디를 입력하세요!");
				$('#id').focus();
				return false;
			}
			
			if(id.length<5){
				alert("아이디의 길이는 최소 5자 이상 입니다.");
				return false;
			}
			
			var reg = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
			var tmp = reg.test(pw); // 위 정규표현식을 만족하는지 여부 (true, false)
			alert(tmp);
			
			
			if(pw == ""){
				alert("비밀번호를 입력하세요!");
				document.getElementById('pw').focus();
			}
		
			return false; // submit 이벤트를 수행X
		
		
		});
		
		
		
		
	});
</script>
<style type="text/css">
	/* 디자인팀 작업 */
	.high_0{background: yellow;}
	.high_1{background: orange;}
	.high_2{background: blue;}
	.high_3{background: green;}
	.high_4{background: red;}


</style>	
	
</head>
<body>
	<h1> test5 </h1>
	
<!-- 	<h2 class="high_0"> head-0 </h2> -->
<!-- 	<h2 class="high_1"> head-1 </h2> -->
<!-- 	<h2 class="high_2"> head-2 </h2> -->
<!-- 	<h2 class="high_3"> head-3 </h2> -->
<!-- 	<h2 class="high_4"> head-4 </h2> -->
	
	<h2> head-0 </h2>
	<h2> head-1 </h2>
	<h2> head-2 </h2>
	<h2> head-3 </h2>
	<h2> head-4 </h2>
	
	<hr>
	<input type="button" value="버튼">
	
	<hr>
	
	<img src="1.jpg">
	
	<hr>
	
	<h1> 글자수 200자 제한 </h1>
	<h2 id="txtCnt">200</h2>
	<textarea rows="10" cols="20"></textarea>
	
	<hr>
	<fieldset>
		<legend> 회원가입 </legend>
			<form action="result.jsp" id="fr">
				아이디 : <input type="text" name="id" id="id"><br>
				비밀번호 : <input type="password" name="pw" id="pw"><br> 
				<input type="submit" value="회원가입">
			</form>
	</fieldset>
	
	
	

</body>
</html>