window.onload = function() {
	$('#pwdSearchForm').on('submit', function(){
		event.preventDefault();
		var formData = $(this).serialize();

		$.ajax({
			type:"post",
			url:"pwdSearch",
			data:formData,
			success:function(result){
				if(result == "") {
					$('#searchResultBox').append('');
					$('#searchResultBox').append('가입되지 않은 회원정보입니다.');
				} else {
					$('#searchResultBox').append(result[0].memId+'님이 가입하신 비밀번호는 "'+result[0].memPwd+'" 입니다.');
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});
}; 