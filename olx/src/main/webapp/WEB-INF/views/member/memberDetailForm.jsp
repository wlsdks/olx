<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/memberDetail.js'/>"></script>
</head>
<body>

<div id="wrap">
<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<!-- mypagemenu -->
		<jsp:include page="/WEB-INF/views/member/myPageMenu.jsp" flush='true'/>
		
		<section id="myPageSection1">
			<div id="commonInformation1">
				<div id="inf1">
					<h1>기본정보</h1><br>
					<div class="common1">
						<h4>ID &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</h4><h4>${member.memId }</h4>
					</div><hr class="common1Hr">
					<div class="common1">
						<h4>성명 &ensp;&ensp;&ensp;&ensp;&ensp;</h4><h4>${member.memName }</h4>
					</div><hr class="common1Hr">
					<div class="common1">
						<h4>주소 &ensp;&ensp;&ensp;&ensp;&ensp;</h4><h4>${member.memAddress1 }</h4>&ensp;<h4>${member.memAddress2 }</h4>
					</div><hr class="common1Hr">
				</div>
			</div><br>
			<div id="commonInformation2">
				<div id="inf1">
					<h1>연락처 정보</h1><br>
					<div class="common1">
						<h4>이메일 &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</h4><h4>${member.memEmail }</h4>
					</div><hr class="common1Hr">
					<div class="common1">
						<h4>전화번호 &ensp;&ensp;&ensp;&ensp;&ensp;</h4><h4>${member.memName }</h4>
					</div><hr class="common1Hr">
				</div><br>
				&ensp;&ensp;<button id="update">회원 정보 수정</button>
				&ensp;<button id="home">메인 페이지로</button>
			</div>				
		</section>
		
<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>		
		
</div>

</body>
</html>