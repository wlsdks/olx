<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="wrap">
<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<!-- mypagemenu -->
		<jsp:include page="/WEB-INF/views/member/myPageMenu.jsp" flush='true'/>
		
		<section>
<h3>내가 쓴 글 목록</h3>
<div id="myPost">
<table width="800" align="center" border="1">
<tr>
<th>글번호</th><th width="500">제목</th><th>글쓴이</th><th>날자</th>
<tr>
<c:forEach items="${postList }" var="post">
<tr>
<td>${post.postNo }</td><td width="500"><a href="<c:url value='/post/detailViewPost/${post.postNo }'/>">${post.postTitle }</a> </td><td>${sessionScope.sid }</td><td>${post.postDate }</td>
</tr>
</c:forEach>

</table>
</div>

<div id="pageForm" align="center">
<c:if test="${startPage != 1}">
            <a href="<c:url value='/myPostList/${startPage-1 }'/>">[ 이전 ]</a>
        </c:if>
        
        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
            <c:if test="${pageNum == spage}">
                ${pageNum}&nbsp;
            </c:if>
            <c:if test="${pageNum != spage}">
                <a href="<c:url value='/myPostList/${pageNum }'/>">${pageNum}&nbsp;</a>
            </c:if>
        </c:forEach>
        
        <c:if test="${endPage != maxPage }">
            <a href="<c:url value='/myPostList/${endPage+1 }'/>">[다음]</a>
        </c:if>

</div>
		</section>
		
<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>		
		
</div>
</body>
</html>