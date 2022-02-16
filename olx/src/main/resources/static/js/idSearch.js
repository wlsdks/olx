
 window.onload = function() {
	$('#idSearchForm').on('submit', function(){
		event.preventDefault();
		var formData = $(this).serialize();

		$.ajax({
			type:"post",
			url:"idSearch",
			data:formData,
			success:function(result){
				if(result == "") {
					$('#searchResultBox').append('');
					$('#searchResultBox').append('가입되지 않은 회원정보입니다.');
				} else {
					$('#searchResultBox').append('가입하신 아이디는 "'+result[0].memId+'" 입니다.');
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});
}; 