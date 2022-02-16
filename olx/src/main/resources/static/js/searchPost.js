/**
 * searchPost (top 검색 기능	)
 */
 
$(function(){
	
 
	$('#searchPost').on('click', function(){
		searchPostAjax();
	})
	$('#searchBarRemove').on('click', function(){
		$('#searchBarInput').val("");
	})
})



function searchEnterkey() {
 	if (window.event.keyCode == 13) {
		// 엔터키가 눌렸을 때 실행할 내용
		searchPostAjax();
	}
}

function searchPostAjax(){
		var $searchBarInput = $('#searchBarInput');
		if($searchBarInput.val() != ""){
			$.ajax({
				type:"post",
				url:"/searchPost",
				data:{"searchBarInput" : $searchBarInput.val()},
				dataType: "text",
				success:function(result){
					$('#mainIndexBox').html(result);
				},
				error:function(data, textStatus){
					alert("전송 실패");
				}
			});
		}
	}

