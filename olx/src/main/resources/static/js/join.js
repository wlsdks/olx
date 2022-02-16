/**
 * 회원가입 유효성 검사
 */
 
 $(document).ready(function () {
	
	$('#joinForm').on('submit',function(){
		if($('#memId').val().length<4||$('#memId').val().length>20){
			$('#errorId').css('display','block');
			$('#memId').focus();
			$('#memId').val()=='';
			return false;
		}
		else{
			$('#errorId').css('display','none');
		}
		
		
		
		var $pwd=$('#memPwd');
		if($pwd.val().length<4||$pwd.val().length>20){
			$('#errorPwd').css('display','block');
			$pwd.focus();
			return false;
		}
		else{
			$('#errorPwd').css('display','none');
		}
		if($('#pwdCheck').val()!=$pwd.val()){
			$('#errorPwdCheck').css('display','block');
			$('#errorPwdCheck').focus();
			return false;
		}
		else{
			$('#errorPwdCheck').css('display','none');
		}
		if($('#memName').val()==''){
			$('#errorName').css('display','block');
			$('#memName').focus();
			return false;
		}
		else{
			$('#errorName').css('display','none');
		}
		
		if($('#memAddress1').val()==''||$('#memAddress2').val()==''){
			$('#errorAddress').css('display','block');
			return false;
		}
		else{
			$('#errorAddress').css('display','none');
		}
		
		//이메일
		var emailval = $("#memEmail").val();
		var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if(emailval==''){
			$('#errorEmail1').css('display','block');
			$('#memEmail').focus();
			return false;
		}
		else{
			$('#errorEmail1').css('display','none');
		}
		
		if(!emailRule.test(emailval)){
			$('#errorEmail2').css('display','block');
			$('#memEmail').focus();
			return false;
		}
		else{
			$('#errorEmail2').css('display','none');
		}
		
		if($('#hp2').val().length!=4||$('#hp3').val().length!=4){
			$('#errorHp').css('display','block');
			$('#hp2').focus();
			return false;
		}
		else{
			$('#errorHp').css('display','none');
		}
		
	});

});