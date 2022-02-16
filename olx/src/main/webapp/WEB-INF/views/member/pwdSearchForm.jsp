<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 찾기</title>
		<link href="<c:url value='/css/pwdSearch.css'/>" rel="stylesheet" type="text/css">		
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/pwdSearch.js'/>"></script>

	</head>
	<body>
		<div id="wrap"> 

			<!-- TOP  -->
		   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		   
		    <br><br><br><br><br><br>
			<section>
				<div id="nameDiv">
					<h3>비밀번호 찾기</h3><hr><br> 
					<p>비밀번호 찾기입니다.</p>					
				</div><br><br>
				<div id="pwdSearchDiv"><br>
				<div id="firstInformation">
					<h3>회원정보를 활용한 비밀번호 찾기</h3>
					<p>회원정보에 등록한 아이디와 이메일로 비밀번호 찾기</p>
				</div>
				<form id="pwdSearchForm">
					<div class="name_box">
						<h4>아이디 &ensp;</h4>
						<input type="text" class="textBox" id='memId' name="memId" >
					</div>
					<div class="name_box">
						<h4>이메일 &ensp;</h4>
						<input type="text" class="textBox" id='memEmail' name="memEmail" >
					</div><br>
					<div class="submit_btn">
						<input type="submit" id="pwd_btn" value="비밀번호 찾기">
					</div>
				</form>


				<div id="searchResultBox"></div><br>


				<div id="searchFooter">
					<a href="<c:url value='/idSearchForm'/>">아이디 찾기</a>&nbsp;|&nbsp;
                	<a href="/login">로그인</a>
				</div>
				</div>
			</section>

	    	<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />

	      </div>

    </body>
</html>