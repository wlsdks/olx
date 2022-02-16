/**
 * memEmailCheck.js
 */
 
 $(document).ready(function(){
	$('#emailCheck').on('click', function(){		
		event.preventDefault();

		$.ajax({
			type:"post",
			url:"memEmailCheck",
			data:{"memEmail": $('#memEmail').val()},    
			dataType:'text',
			success:function(result){
				if(result == "no_use"){
					alert("사용할 수 없는 이메일입니다.");
				}else{
				    alert("사용 가능한 이메일입니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});
});