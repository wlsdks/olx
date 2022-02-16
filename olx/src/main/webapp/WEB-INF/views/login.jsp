<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>	
    <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>
		<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
	</head>
	<body>
    <div id="wrap">
        
    <!-- TOP -->
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>

	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<h1>로그인</h1>
			</div>
		</header>
		<section class="login-input-section-wrap">
			<form id="loginForm">
			<p id="loginError"></p>
				<div class="login-input-wrap">	
					<input placeholder="아이디" type="text" name="id"></input>
				</div>
				<div class="login-input-wrap password-wrap">	
					<input placeholder="비밀번호" type="password" name="pwd"></input>
				</div>
				<div class="login-button-wrap">
					<button type="submit" name="submit" id="submit" form="loginForm">Sign in</button>
				</div>
				<div class="login-stay-sign-in"></div>
			</form>
		</section>
		<section class="Easy-sgin-in-wrap">
			<h2>소셜 로그인</h2>
			<ul class="sign-button-list">
				<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
				<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
			</ul>
		</section>
		<section id="login3">
			<a class="forget-msg" href="<c:url value='/idSearchForm'/>">아이디 찾기</a>&nbsp;|&nbsp;
            <a class="forget-msg" href="<c:url value='/pwdSearchForm'/>">비밀번호 찾기</a>&nbsp;|&nbsp;
            <a class="forget-msg" href="/join">회원가입</a>
        </section>
		</div>
	</div>

    <!-- BOTTOM -->
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		
    </div>
	</body>
</html>