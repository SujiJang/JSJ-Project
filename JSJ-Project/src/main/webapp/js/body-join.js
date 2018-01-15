$(document).ready(function(){
	
	//비밀번호 focusout 되었을 때 비밀번호 확인 하는 거
	$('#confirmpassword').focusout(function(){
		if($('#password').val()==$('#confirmpassword').val()) {
			
		}
		
	});
	
	//회원가입 완료 버튼 눌렀을 때
	$('#okjoin').on('click', function(){
		alert("click!")
		$('#joinform').attr('action', 'register.do');
		$('#joinform').attr('method', 'post');
		$('#joinform').submit();
	});
	
	//로그인버튼 눌렀을 때
	$('#sm').on('click', function(){
		alert('login!');
		/*$('#loginform').attr('action', 'confirm.do?');*/
		$('#loginform').attr('method', 'post');
		alert("11");
		$('#loginform').submit();
	});
});