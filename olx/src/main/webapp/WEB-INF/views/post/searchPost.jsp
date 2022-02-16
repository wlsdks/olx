<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>검색하기</title>
	
	<link href="<c:url value='/css/searchPost.css'/>" rel="stylesheet" type="text/css">
	
</head>
	<body>
		<div class="searchDiv">
			<p><br>
			검색내용 : 
			<c:if test="${not empty resultStr}">
				<span id="resultStrValue">${resultStr }</span>
			</c:if>
			<c:if test="${empty resultStr}">
				<span id="resultStrValue">검색 키워드 없음</span>
			</c:if><br><br>
			<h3>제목&내용 검색 결과</h3>
		</div>

		<c:if test="${not empty titleCntPostVO }">
		<div style="text-align:right; margin-right: 10px;"><a href="/allContentSearchPost/${resultStr}">전체보기 ></a></div>
		<div id="hotItemsSection">
		<div class="hotItemGroup">

              <ul class="class-list" data-position="0">
             		<c:set var="postNum" value="0"/>
             		<c:set var="breakPostNum" value="0"/>
              	<c:forEach items="${titleCntPostVO }" var="post">
              		<c:if test="${breakPostNum ne 2}">
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
                   </c:if>

                 		 <c:set var="postNum" value="${postNum + 1}"/>
                   <c:if test="${postNum eq 5}">
	                   	<c:set var="postNum" value="0"/>
	                   	<c:set var="breakPostNum" value="${breakPostNum + 1}"/>
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
		<c:if test="${empty titleCntPostVO }">
			<br>
			<p>검색결과가 없습니다.</p>
			<br>
		</c:if>
		<br><br><br><hr><br><br>

		<div class="categoryDiv">
			<h3>카테고리 검색 결과</h3>
			<c:if test="${not empty searchPostVO}">
			<div style="text-align:right; margin-right: 10px;"><a href="/allCateorySearchPost/${resultStr}">전체보기 ></a></div>
			<div id="hotItemsSection">
			<div class="hotItemGroup">
	              <ul class="class-list" data-position="0">
	             		<c:set var="postNum" value="0"/>
	             		<c:set var="breakPostNum" value="0"/>
	
	              	<c:forEach items="${searchPostVO }" var="post">
	              		<c:if test="${breakPostNum ne 2}">
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
	                   	</c:if>
	
	                	<c:set var="postNum" value="${postNum + 1}"/>
	                   <c:if test="${postNum eq 5}">
		                   	<c:set var="postNum" value="0"/>
		                   	<c:set var="breakPostNum" value="${breakPostNum + 1}"/>
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
				
			<c:if test="${empty searchPostVO}">
				<br>
				<p>검색결과가 없습니다.</p>
				<br>
			</c:if>
		</div><br><hr>
		
	</body>
</html>