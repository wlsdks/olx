
$(document).ready(function(){
	$('#withdrawMemberForm').on('submit', function(){
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"withdrawMember",
			data:{"memId": $('#memId').val(),
					  "memPwd":  $('#memPwd').val()}, 
			dataType:'text',
			success:function(result){
				if(result == "success"){
					alert("탈퇴를 완료했습니다.");
					location.href="/";
				}else{
				    alert("탈퇴에 실패했습니다. 비밀번호를 확인해 주세요.");
				    location.reload();
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});







