/**
 * searchPost (top 검색 기능	)
 */

$(function() {
	$('#Chatting').on('submit', function() {
		insertchatAjax();
	
		return false;
	})
})






function insertchatAjax() {
	var formdata = $('#Chatting').serialize();
	
	$.ajax({
		type: "post",
		url: "/insertChat.do",
		data: formdata,
		dataType: 'text',
		
		success: function(result) {

			$('#chatList').prepend($('#chatContent').val() + "<br><br>");
			$('#chatList').prepend($('#memNo').val() + "<br>");
			
			$('#chatContent').val('');
			console.log(result);

		},
		error: function(result, textStatus) {
			alert(result);
			console.log(result);
			console.log(textStatus);
			alert(textStatus);
		}
	});
}

/*
1) detailViewPost.jsp
<form id="Chatting">에서 method, action 제거
- 여기에 action을 작성해두면 Ajax로 전송되지 않음

2)insertchat2.js 	
$('#chatList').prepend($('#chatContent').val() + "<br>");
$('#chatContent').val('');

- 댓글 영역에 댓글 추가하는 코드와, 입력한 댓글 지워주는 코드 추가

3) PostController.java
@ResponseBody
@RequestMapping("/insertChat.do") 
public String insertChat(ChatVO vo) 

- ChatVO vo만 받아오기. 
*/
