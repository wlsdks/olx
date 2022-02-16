<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>chatbot Layer</title>
	<script src="<c:url value='/js/chatbot4.js'/>"></script>		
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
	<style>
		
	</style>
</head>
	<body>
		<div id='chatbot-btn'><img src="<c:url value='/image/chatImage.png'/>"></div>
		<div id="chatbot-box">
		<!-- Header -->
		<div id="chatHeader">
			<span>챗봇</span>
			<button id="btnClose">X</button>
		</div>
		
		<!-- 채팅 내용 출력 -->
			
			<!-- 응답 메시지 출력  -->
			<div id="chatBox"></div><br>
			
			<div>
				<!-- 질문 메시지 입력 폼 -->
				<form id="chatForm">
					<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">	
					<input type="submit" id="chatFormSubmit" value="전송">		
				</form>		
			</div>
			
			<div>
			<!-- 음성 녹음 -->
			음성 메시지 : <button id="record">녹음</button> 
							<button id="stop">정지</button>
							<div id="sound-clips"></div><br>
			
			</div>
			
			<div id="chatbotAuodio">
				<audio preload="auto" controls></audio>
			</div>
		</div>
	</body>
</html>