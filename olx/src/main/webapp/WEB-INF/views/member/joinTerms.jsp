<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>약관동의</title>
		<link href="<c:url value='/css/joinTerms.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/joinTerms.js'/>"></script>

	</head>
	<body>
		<div id="wrap"> 

			<!-- TOP  -->
		   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
			<br><br><br><br>
			<section>

			<div class="joinTerms">

			<h2>약관동의</h2><br><br>

			<div class="agree_box">
			<div class="article_box">
				<h3>이용 약관 동의</h3>

				<div class="article">
					<h4>제1조(목적)</h4>
					<p class="article_text">
					이 약관은 인터넷 쇼핑몰(이하 “몰”이라 한다) 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 “몰”과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
					※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
					</p>
					<h4>제 2 조 (약관의 효력 및 변경)</h4>
					<p class="article_text">
					① 이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 이용자에게 공시하고, 이에 동의한 이용자가 서비스에 가입함으로써 효력이 발생합니다.
					② 몰은 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지함으로써 이용자가 직접 확인할 수 있도록 할 것입니다.
					③ 이용자는 변경된 약관에 동의하지 않으실 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.
					④ 이용자가 이 약관의 내용에 동의하는 경우 몰의 서비스 제공행위 및 이용자의 서비스 이용행위에는 이 약관이 우선적으로 적용될 것입니다. 이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 정보통신윤리위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.
					</p>
				</div>
				<br>
				<input type="checkbox" id="agree1" class="chk"><label for="agree1">동의합니다.</label><br><br><br><br>
			</div>

			<div class="article_box">
				<h3>개인정보 수집 및 이용 동의</h3>

				<div class="article">
					<h4>1.개인정보의 수집·이용 목적 : 회원관리</h4>
					<h4>2. 수집하는 개인정보의 항목</h4>
					<p class="article_text">
					필수정보 : 이름, 주소, 이메일, 휴대폰번호, 비밀번호, 로그인ID
					</p>
					<h4>3. 개인정보의 보유·이용 기간 : 회원가입일로부터 회원 탈퇴시까지</h4>
					<p class="article_text">
					개인정보보호법에 의거 통합회원 가입 후 2년이 경과한 경우 개인정보 수집·이용에 대한 재동의가 필요하며, 재동의하지 않을 경우 회원 정보가 삭제될 수 있습니다.(재동의 대상은 로그인 시 알려드립니다.)
					</p>
					<h4>4. 동의거부 권리 및 거부할 경우의 불이익</h4>
					<p class="article_text">
					* 귀하는 위 사항에 대하여 동의를 거부할 권리가 있으며, 필수정보 동의 거부시에는 회원가입이 제한될 수 있음을 알려드립니다.
					</p>
				</div>
				<br>
				<input type="checkbox" id="agree2" class="chk"><label for="agree2">동의합니다.</label>
			</div>
			</div>

			<br><br><br>
			<input type="checkbox" id="allCheck">
			<label for="allCheck">전체동의</label>
			<br>
			<div class="btn-area">
				<button id="joinTerms_btn"><a href="<c:url value='/joinForm'/>">동의하고 다음 단계로 이동</a></button>
				<button id="joinCancle_btn"><a href="/">취소</a></button>
			</div>
			
			

			</div><!-- joinTerms -->
			</section>

	    	<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />

	      </div>

    </body>
</html>
