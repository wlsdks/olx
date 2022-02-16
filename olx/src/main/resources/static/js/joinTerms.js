$(document).ready(function () {

	$('#allCheck').on('click', function(){
		var chk =$("#allCheck").prop("checked")
		if(chk){
			$('.chk').prop("checked", true);
		} else {
			$('.chk').prop("checked", false);
		}
	});

	$('.chk').on("click", function(){
		$("#allCheck").prop("checked", false);
	});


	$('#joinTerms_btn').on('click',function(){
		if($('#agree1').is(":checked")==false||$('#agree2').is(":checked")==false){
			alert("개인정보 수집 및 이용동의에 동의해야만 회원가입을 할 수 있습니다.");
			return false;
		}
	});

}); 