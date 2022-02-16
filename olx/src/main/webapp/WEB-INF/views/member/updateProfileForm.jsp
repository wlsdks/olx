<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/memEmailCheck.js'/>"></script>
</head>
<body>
<div id="wrap">
<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<!-- mypagemenu -->
		<jsp:include page="/WEB-INF/views/member/myPageMenu.jsp" flush='true'/>
		
		<section>

		
<h3>회원 정보 수정</h3>

<form id="updateProfileForm" name="updateProfileForm" method="post"  action="/updateProfile">
<input type="hidden" id="memId" name="memId" value="${sessionScope.sid }">
<table>
		
		<tr>
		<th>성명</th><td><input type="text" id="memName" name="memName"></td>
		</tr>
		<tr>
		<th>비밀번호</th><td><input type="password" id="memPwd" name="memPwd"></td>
		</tr>
		<tr>
		<th>주소</th>
		<td colspan="2"><input type="text" id="memAddress1" name="memAddress1"><br>
						<input type="text" id="memAddress2" name="memAddress2"></td>
		</tr>
		<tr>
		<th>이메일</th>
		<td><input type="text" id="memEmailId" name="memEmailId">@
		<input type="text" id="memEmail" name="memEmail">
		<button id="emailCheck">중복체크</button> </td>
		</tr>
		<tr>
		<th>전화번호</th><td><input type="text" id="memPhone" name="memPhone"></td>
		</tr>
		<tr>
		<td colspan="2" align="center" id="button">
	                    <br><input type="submit" value="완료">
	                    <input type="reset" value="취소">
	                </td>
	                </tr>
		</table>
		
	      </form>	

</section>
		
<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>		
		
</div>
</body>
</html>