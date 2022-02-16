<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/withdrawMember.js'/>"></script>
</head>
<body>

<div id="wrap">
<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<!-- mypagemenu -->
		<jsp:include page="/WEB-INF/views/member/myPageMenu.jsp" flush='true'/>
		
		<section>
		<h3>회원탈퇴</h3>
		<p>정말 탈퇴하시겠습니까? 되돌릴 수 없습니다.</p><br>
		<p>탈퇴를 원하시면 아래에 비밀번호를 입력해주세요.</p><br>
		<form id="withdrawMemberForm" name="withdrawMemberForm">
		<input type="hidden" id="memId" name="memId" value="${sessionScope.sid }">
		<input type="password" id="memPwd" name="memPwd"><br>
		<input type="submit" value="탈퇴">
	    <input type="reset" value="취소">
		
		</form>
		
		
		</section>
		
<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>		
		
</div>

</body>
</html>