<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	   
	    <link href="<c:url value='/css/index.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/menuNav.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/mainBanner.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/section.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/index-modal.css'/>" rel="stylesheet" type="text/css">
	    
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/searchPost.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
		<script src="<c:url value='/js/menuNav.js'/>"></script>
		<script src="<c:url value='/js/mainBanner.js'/>"></script>
		<script src="<c:url value='/js/object.js'/>"></script>
		<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" crossorigin="anonymous">
    </head>
	<body id="topBody">
		<header>
			<jsp:include page="/WEB-INF/views/layout/chatbot.jsp" flush='true'/>
			<div id="my_modal">
				<div>
					<h3>이미지 검색</h3>
					<form id="objectDtectForm" enctype="multipart/form-data">
						파일 가져오기<br> <input type="file" id="uploadFile" name="uploadFile"> 
						<div>
							<input class="modal_submit" type="submit" value="결과 확인">
						</div>
					</form>
				</div>
				<a class="modal_close_btn">닫기</a>
	        </div>
	        
			<div id="header">
				<div id="mainLogo">				
	               <!-- 메뉴 : 로그인 하지 않은 경우  -->
					<c:if test="${empty sessionScope.sid }">
	                    <a href="<c:url value='/join'/>">회원가입</a>
	                    <a href="<c:url value='/login'/>">로그인</a>
					</c:if>
			
					<!-- 메뉴 : 로그인 한 경우  -->	
					<c:if test="${not empty sessionScope.sid}">
						<a href="<c:url value='/logout'/>">로그아웃</a>
						<a href="<c:url value='/cart'/>">즐겨찾기</a>
						<a href="<c:url value='/myPageForm'/>">${sessionScope.sid}님의 마이페이지</a>
					</c:if>
				</div><hr/>
				
				<button type="button" class="mobile-menu"><i class="fas fa-bars"></i></button>
   				<div class="menuwrap">
			        <nav id="menu">
			            <!-- "메뉴목록 표시" -->
			            <ul class="category_list">
			                <li class=""><a class="link_sub_item" href="/category/1">지역별 장터</a></li>
			                <li class=""><a class="link_sub_item" href="/category/2">중고시세</a></li>
			                <li class=""><a class="link_sub_item" href="/category/3">의류</a></li>
			                <li class=""><a class="link_sub_item" href="/category/4">신발</a></li>
			                <li class=""><a class="link_sub_item" href="/category/5">시계</a></li>
			            </ul>            
			        </nav>
			    </div>
				
            	<div id="userManageBtn">
					<div id="nameWrapper">
						<div id="cell">
						 <div id="firstName">
						 <a href="<c:url value='/'/>"><br><h1 id="naming">&ensp;&nbsp; BaNaDa</h1></a>
				               <article>
					        		<div id="SearchBarBox">
							            <div id="SearchBar">
							                <div>
												<input onkeyup="searchEnterkey();" type="text" id="searchBarInput" name="searchBarInput" placeholder="검색어 입력">
						                	</div>
							                <span><i class="fas fa-times" id="searchBarRemove"></i></span>
							                <div style="margin-left: 10px;"><a id="searchPost">검색</a></div>
							                <div><button id="popup_open_btn">IMG</button></div>
							            </div>
							        </div>
					        	</article>
					        	<a href="<c:url value='/join'/>"><i class="fas fa-shopping-cart fa-2x naming5"></i></a>
					        	<a href="<c:url value='/myPageForm'/>"><br><br><h3 class="naming2">회원정보 &ensp;&ensp;&nbsp; </h3></a>
					        		<hr id="hr2">
		                		<a href="<c:url value='/login'/>"><br><br><h3 class="naming3">게시판 &ensp;&ensp;&nbsp;&ensp;</h3></a>
									<hr id="hr2">
		                		<a href="<c:url value='/insertPostForm'/>"><br><br><h3 class="naming4">게시글 작성</h3></a>
	                		</div><hr id="hr3">
			               </div>
						</div>
					</div>
                </div>
            <script src="<c:url value='/js/index_modal.js'/>"></script>
		</header>
	</body>
</html>