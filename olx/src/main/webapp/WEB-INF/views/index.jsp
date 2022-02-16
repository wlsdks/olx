<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4조 최종 프로젝트</title>
</head>
<body>
	<div id="wrap">
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />

		<aside id="aside1">
			<a href="/login"><br>
				<p class="asideNaming">로그인</p> 
				<i class="fas fa-sign-in-alt fa-2x"></i>
			</a><br><br><br>
			<a href="/logout">
				<p class="asideNaming">로그아웃</p>
				<i class="fas fa-sign-out-alt fa-2x"></i>
			</a><br><br><br>
			<a>
				<p class="asideNaming">최근목록</p>
				<i class="fas fa-sign-in-alt fa-2x"></i>
			</a><br><br><br>
			<a>
				<p class="asideNaming">고객센터</p>
				<i class="fas fa-sign-in-alt fa-2x"></i>
			</a><br><br>
		</aside><br> 

		<div id="mainIndexBox">
			<section>
				<article id="banner">
					<div class="slider-1">
						<div class="slides">
							<div class="active"
								style="background-image: url(image/slide_img_01.jpg);"></div>
							<div style="background-image: url(image/slide_img_02.jpg);"></div>
							<div style="background-image: url(image/slide_img_03.jpg);"></div>
							<div style="background-image: url(image/slide_img_04.jpg);"></div>
							<div style="background-image: url(image/slide_img_05.jpg);"></div>
						</div>
						<div class="page-btns">
							<div class="active"
								style="background-image: url(image/slide_img_01.jpg);"></div>
							<div></div>
							<div></div>
							<div></div>
						</div>
						<div class="side-btns">
							<div>
								<span><i class="fas fa-angle-left"></i></span>
							</div>
							<div>
								<span><i class="fas fa-angle-right"></i></span>
							</div>
						</div>
					</div>
				</article><br><br>
				
				<!-- 첫번째 hot  -->
				<article>
					<div id="hotItemsSection2">
						<div class="hotItemGroup">
							<ul class="class-list" data-position="0">
								<div id="class-information">
									<div class="class-tag"><br><br>
										<p id="firstRecommand">BaNaDa의</p>
										<h2>추천 상품</h2><br>
										<br>
										<p>추천 상품을</p>
										<p>지금바로 확인하세요!</p>
									</div>	
								</div>
							</ul>
							<ul class="class-list" data-position="0">
								<c:forEach items="${postList}" var="pt" end="3">
									<div>
										<div class="class-card">
											<a href="/post/detailViewPost/${pt.postNo}"> 
											<img src="/resource/photo_upload/${pt.postImg }" alt="top1"
												 class="class-image" />
											</a>
										</div>
										<div class="class-container">
											<div class="class-skill">
												<div class="class-format">지역</div>&ensp;
												<div class="class-format2">${pt.postState}</div>
												<p class="information">${pt.postTitle}</p>
											</div>
											<div class="class-skill">
												<div>좋아요:</div>&ensp;
												<div>${pt.postState}</div>
												<p class="information">${pt.postTitle}</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</ul>
						</div>
					</div>
				</article><br><br>
				
				<!-- 카테고리 1 -->
				<article>
					<div id="hotItemsSection1">
						<div class="hotItemGroup1">
							<ul class="class-list" data-position="0">
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">지역별 장터</h4>
								</div>
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">고객센터</h4>
								</div>
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">지역 best</h4>
								</div>
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">시세조회</h4>
								</div>
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">안심거래</h4>
								</div>
								<div>
									<div>
										<li class="class-card3"><img src="" alt="top1"
											class="class-image" /> <a
											href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
									</div>
									<h4 align="center">전체상품</h4>
								</div>
							</ul>
						</div>
					</div>
				</article><br><br>
				<!-- 첫번째 hot  -->
				<article>
					<div id="hotItemsSection3">
						<div class="hotItemGroup">
							<ul class="class-list" data-position="0">
								<div id="class-information">
									<div class="class-tag"><br><br>
										<p id="firstRecommand">실시간 Hot</p>
										<h2>인기 상품</h2><br>
										<br>
										<p>실시간 인기 상품을</p>
										<p>지금바로 구매하세요</p>
									</div>	
								</div>
							</ul>
							<ul class="class-list" data-position="0">
								<c:forEach items="${postList}" var="pt" end="3">
									<div>
										<div class="class-card">
											<a href="/post/detailViewPost/${pt.postNo}"> 
											<img src="/resource/photo_upload/${pt.postImg }" alt="top1"
												 class="class-image" />
											</a>
										</div>
										<div class="class-container">
											<div class="class-skill">
												<div class="class-format">지역</div>&ensp;
												<div class="class-format2">${pt.postState}</div>
												<p class="information">${pt.postTitle}</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</ul>
						</div>
					</div>
				</article><br><br>
				<!-- 카테고리 2 -->
				<article>
					<div id="hotItemsSection1">
						<h3 class="productTag">&ensp;카테고리</h3><br><br>
						<div class="hotItemGroup">
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">전자기기</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">가구</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">시계</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">의류</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">생활용품</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">생필품</h4>
							</div>
							<div>
								<div>
									<li class="class-card2"><img src="" alt="top1"
										class="class-image" /> <a
										href="/post/detailViewPost/${1006 }" target="_blank"></a></li>
								</div>
								<h4 align="center">반려동물</h4>
							</div>
						</div>
					</div>
				</article><br><br>
				<!-- 두번째 상품 list -->
				<article>
					<div id="hotItemsSection4">
						<h1 class="productTag"><br>&ensp;상품목록</h1><br>
							<div class="hotItemGroup2">
								<ul class="class-list" data-position="0">
									<c:set var="postNum" value="0" />
									<c:forEach items="${postList}" var="post">
									<div>
										<div class="class-card">
											<a href="/post/detailViewPost/${post.postNo}"> 
											<img src="/resource/photo_upload/${post.postImg }" alt="top1"
												 class="class-image" />
											</a>
										</div>
										<div class="class-container">
											<div class="class-skill">
												<div class="class-format">지역</div>&ensp;
												<div class="class-format2">${post.postState}</div>
												<p class="information">${post.postTitle}</p>
											</div>
										</div>
									</div>
									<c:set var="postNum" value="${postNum + 1}" />
									<c:if test="${postNum eq 5}">
									<c:set var="postNum" value="0" />
								</ul>
							</div>
							<div class="hotItemGroup2">
								<ul class="class-list" data-position="0">
									</c:if>
									</c:forEach>
								</ul>
							 </div>
						 </div>
					 </article>
				</section>
			</div>

			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		</div>
	</body>
</html>