<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Post</title>
		<link href='/css/detailViewPost.css' rel="stylesheet" type="text/css">
	</head>
	<body>

		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />

		<div id="wrap">
			<h3>검색결과 전체 보기</h3>
			<c:if test="${not empty searchPostVO }">
			<div id="hotItemsSection">
			<div class="hotItemGroup">

	              <ul class="class-list" data-position="0">
	             		<c:set var="postNum" value="0"/>
	              	<c:forEach items="${searchPostVO }" var="post">

	              		<div>
	                          <div class="class-card">
	                          <a href="/post/detailViewPost/${post.postNo}"> <img
											src="/resource/photo_upload/${post.postImg }" alt="top1"
											class="class-image" />
										</a>
	                          </div>
	                          <div class="class-container">
	                           <div class="class-skill">
	                               <div class="class-format">지역</div>&ensp;
	                               <div class="class-format2">${post.postState }</div>


	                              </div>
	                              <div>
	                              	<p class="information">${post.postTag }:${post.postTitle }</p>
	                           	<p><fmt:formatDate value="${post.postDate }"  pattern="YY.MM.dd yy:hh:ss"/></p>
	                           	<p>조회수 : ${post.postHit }</p>
	                              </div>

	                             </div>
	                       </div>

	                 		 <c:set var="postNum" value="${postNum + 1}"/>
	                   <c:if test="${postNum eq 5}">
		                   	<c:set var="postNum" value="0"/>
		                   	</ul>
		                   	</div>
		                   	<div class="hotItemGroup">
		                   	<ul class="class-list" data-position="0">
	                   </c:if>
	                  </c:forEach>
	               </ul>
	        	 </div>
	        	</div>
			</c:if>

			<c:if test="${empty searchPostVO }">
				<br>
				<p>검색결과가 없습니다.</p>
				<br>
			</c:if>

			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		</div>



	</body>
</html> 