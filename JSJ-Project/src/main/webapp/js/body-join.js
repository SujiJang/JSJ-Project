$(document).ready(function(){
	$('#confirmpassword').focusout(function(){
		if($('#password').val()==$('#confirmpassword').val()) {
			
		}
		
	});
	
	$('#okjoin').on('click', function(){
		alert("click!")
		$('#joinform').attr('action', 'register.do');
		$('#joinform').attr('method', 'post');
		$('#joinform').submit( );
	});
	
	
	
});