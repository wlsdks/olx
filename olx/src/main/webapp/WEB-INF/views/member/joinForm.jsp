<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 가입 폼</title>	
		<link href="<c:url value='/css/join.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/memIdCheck.js'/>"></script>
		<script src="<c:url value='/js/memEmailCheck.js'/>"></script>
		<script src="<c:url value='/js/joinAddress.js'/>"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>	
		<script src="<c:url value='/js/searchZip.js'/>"></script>
		<script src="<c:url value='/js/join.js'/>"></script>	
	</head>
	<body>
		<div id="wrap"> 
		
			<!-- TOP  -->
		   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		   <br><br><br>
			<section>
			<div id='content'>
			<h2>회원가입</h2>
			<div id="formAllbox">
				<div id='form_box'>
				<form  name="joinForm" id="joinForm" method="post" action='<c:url value="/memJoin" />'>
					<div>
		  				<h3>아이디</h3>
		  				<span class='box id'>
		  					<input type="text" class='textBox' id='memId' name="memId" maxlength="20">
		  				</span>
		  				<input type="button" id="idCheck" name="memIdCheck" value="아이디 중복체크">
		  				<span id='errorId'>아이디는 4~20자로 입력해주세요</span>
		  			</div>
	
		  			<div>
		  				<h3>비밀번호</h3>
		  				<span class='box pass'>
		  					<input type="password" class="textBox" id='memPwd' name="memPwd" maxlength="20">
		  				</span>
		  				<span id='errorPwd'>비밀번호는 4~20자로 입력해주세요</span>
		  			</div>
	
		  			<div>
		  				<h3>비밀번호 재확인</h3>
		  				<span class='box passCheck'>
		  					<input type="password" class="textBox" id='pwdCheck' maxlength="20">
		  				</span>
		  				<span id='errorPwdCheck'>비밀번호를 다시 확인해주세요</span>
		  			</div>
	
		  			<div>
		  				<h3>이름 입력</h3>
		  				<span class='box name'>
		  					<input type="text" class="textBox" id='memName' name="memName" maxlength="10">
		  				</span>
		  				<span id='errorName'>이름을 입력해주세요</span>
		  			</div>
	
		  			<div>
		  				<h3>시/도 입력</h3><br>
		  				<select id="memAddress1" name="memAddress1" class="address">
		  				</select>
		  			</div><br>
	
		  			<div>
		  				<h3>시/군/구 입력</h3><br>
		  				<select id="memAddress2" name="memAddress2" class="address">
		  				</select>
		  				<span id='errorAddress'>주소를 입력해주세요</span>
		  			</div><br>
	
					<div>
		  				<h3>이메일 입력</h3>
		  				<span class='box name'>
		  					<input type="text" class="textBox" id='memEmail' name="memEmail" maxlength="20">
		  				</span>
		  				<input type="button" id="emailCheck" name="memEmailCheck" value="이메일 중복체크">
		  				<span id='errorEmail1'>이메일을 입력해주세요</span>
		  				<span id='errorEmail2'>유효한 이메일을 입력해주세요</span>
		  			</div><br>
	
		  			<div>
		  				<h3>전화번호</h3>
		  				<span >
		  					<select class='hp' name="memHP1" id="hp1">
		  						<option value="010">010</option>
		  						<option value="011">011</option>
		  						<option value="011">012</option>
		  					</select>-
		  					<input type="text" maxlength="4" class='hp' id='hp2' name="memHP2">-<input type="text" maxlength="4" class='hp' name="memHP3" id='hp3'>
		  				</span>
		  				<span id='errorHp'>전화번호를 입력해주세요</span>
		  			</div>
	
		  			<div>
		  				<input type="submit" value="가입하기" id='submit'> 
		  			</div>
	
		  		</form>
		  		</div><!-- form_box -->
		  		</div> <!-- content -->
	  		
	  		</div>

			</section>	
	    	<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	   
	      </div>
     
    </body>
</html>


