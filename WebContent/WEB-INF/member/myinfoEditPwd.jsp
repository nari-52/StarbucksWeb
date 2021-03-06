<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<jsp:include page="../header.jsp" />  
    
<style type="text/css">
	
	* {
		margin: 0px;
		padding: 0px;
	}
	
	header {
		/* position: fixed; */
		height: 120px; 
		background-color : green;
	}
	
	#title {
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		font-size: 30pt;
		text-align: center;
	} 	
	
	nav {
		width: 700px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 20px;
	}
	
	nav:after {
		content: '';
		clear: both;
		display: block;
	}
	
	#box1 {	/* 아이콘 및 문구 box1 */
		width: 700px;
		height: 350px;
		float: left;	
		border: solid 1px #EAEAEA;
	}

	img {
		margin-top: 20px;
		display: block;	/* 커피 아이콘 가운데 정렬 */
		margin-left: auto;
		margin-right: auto;		
		margin-bottom: 5px;
	}
	
	span { /* 문구 */
		color: #666;
		display: block;
		font-size: 18pt;
		text-align: center;
		margin-top: 20px;
	}
	
	#box2 {
		width: 700px;
		height: 130px;
		float: left;
		border: solid 1px #EAEAEA;
	}
	
	strong { /* 아이디, 비밀번호 title */
		font-size: 18pt;
		padding: 20px;
	}
	
	.id_text {
		padding: 20px 0 5px 20px;
	}
	
	input {
		width: 100%;
		height: 60px;
		font-size: 12pt;
		display: inline-block;
		max-width: 530px;
	}
	
	#box3 {
		width: 700px;
		height: 130px;
		float: left;
		border: solid 1px #EAEAEA;
	}
	
	#box4 {
		width: 700px;
		height: 250px;
		float: left;
		border: solid 1px #EAEAEA;
	}
	
	.newPassword_error {
		font-size: 12pt;
		float: left;
		margin-top: 5px;
		margin-bottom: 5px;
	}
	
	.passwordCheck_error {
		font-size: 12pt;
		text-align: left;
		margin-top: 5px;
	}
	
	.con2 {
		width: 650px;
		height: 100px;
		margin-top: 20px;
		margin-right: auto;
		margin-left: auto;
		border-radius: 3px;
		background-color: #006633;
	}	

	.btn_ok {
		color: white;
		text-decoration: none;
		cursor: pointer;
		font-size: 24pt;
		line-height: 100px;
		display: block;
		text-align: center;
	}

	footer {
		margin-top: 80px;
		height: 300px;
		background-color: black;
	}
	
</style>

<script type="text/javascript" src="/JqueryStudy/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/JqueryStudy/util/myutil.js"></script>

<script type="text/javascript">

$(document).ready(function(){

	
	$("input#newPassword").blur(function(){
		
		var regExp = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,20}$/;    

    	var bool = regExp.test($(this).val());
 		
 		if(!bool) {
 			
 			$("span.newPassword_error").html("영문, 숫자 혼합하여 10~20자리 이내로 입력하세요.").css('color', 'red');
 			
 			$(this).val(""); 
			$(this).focus();
 		
 		}
 		
 		else {
 			$("span.newPassword_error").html("사용가능한 비밀번호 입니다.").css('color', 'black');
 		}
 		
	});
	

	$("input#passwordCheck").blur(function () {
		
		if($(this).val() !=  $("input#newPassword").val()){ // 올바르지 않을 때
			
			$("span.passwordCheck_error").html("일치하지 않습니다.").css('color', 'red');
			
			$("input#password").val("");
			$(this).val(""); // 값 비움
			
		}
		else { // 올바를 때
			$("span.passwordCheck_error").html("일치합니다.").css('color', 'black');
			}
		});
	
});


// (비밀번호변경) 확인 버튼 클릭시
function goUpdatePwd() {
	
	var flagBool = false;
	
	$(".requiredEditPW").each(function(){
		var data = $(this).val().trim();
		if(data=="") {
			flagBool = true;
			return false;
		}
	});
	
	
	if(flagBool) {
		alert("변경사항을 입력하세요!");
		return;
	}
	
	else {
		var frm = document.updatePwdFrm;
		frm.method = "POST";
		frm.action = "/StarbucksWeb/member/myinfoEditPwdEnd.sb";
		frm.submit();
	}

}

 
</script>

</head>
<body>
	<div id="container">
		<form name="updatePwdFrm">
		
		<div id="title">
		<strong>비밀번호 변경</strong>
		</div>
		
		<nav>
		
			<div id="box1">
				<img src="../images/jiwon/sally.png" width="300" height="250" >
				<span>새로운 비밀번호로 변경 하실 수 있습니다.</span>
			</div> 
			
			<div id="box2">
				<strong>아이디</strong>			
				<p class="id_text"><input style="background-color: #f2f2f2; padding-left: 10px;" type="text" name="userid" id="userid" value="${userid}" readonly /></p>
			</div>

			<div id="box3">
				<strong>현재 비밀번호</strong>			
				<p class="id_text"><input type="password" name="password" id="password" value="" class="requiredEditPW" maxlength="20" placeholder="비밀번호를 입력해 주세요." /></p>
			</div>
			
			<div id="box4">
				<strong>새 비밀번호</strong>			
				<p class="id_text">
				<input type="password" id="newPassword" name="newPassword" value="" class="requiredEditPW" placeholder="영문, 숫자 혼합하여 10~20자리 이내로 입력하세요." />
				<span class="error newPassword_error"></span>
				<input type="password" id="passwordCheck" value="" class="requiredEditPW" placeholder="비밀번호를 다시 한번 입력해 주세요." />
				<span class="error passwordCheck_error"></span>
				</p>
			</div>
		
		</nav>
		
		<div class="con2">
			<a class="btn_ok" id="btnUpdate" onClick="goUpdatePwd();">확인</a>	
		</div>
		
		</form>
	</div>

<jsp:include page="../footer.jsp" />