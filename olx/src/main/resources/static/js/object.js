/**
 * 
 */
 
 $(function(){
	$('#objectDtectForm').on('submit', function(event){
		event.preventDefault();
		 var formData = new FormData($('#objectDtectForm')[0]);
		 
		 // 업로드된 파일명 알아오기
		 var fileName = $('#uploadFile').val().split("\\").pop();
		 console.log(fileName);
		 var resultDiv = $('#resultDiv');

		$.ajax({
			url:"objectDetection",
			enctype:'multipart/form-data',
			type:"post",
			data:formData,
			processData: false,  // 필수
			contentType: false,  // 필스
			success:function(result){
				console.log(result, fileName);
				console.log(fileName);
				$('#mainIndexBox').html(result);
			},
			error:function(e){
				alert("오류가 발생했습니다." + e);
			}
		});
	});
	
});

