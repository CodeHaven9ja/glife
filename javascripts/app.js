$(function(){
	
	$('input[title]').qtip({
		
		});
		
	$('select[title]').qtip({
		
		});
	
	$("#agree").click(function() {
	  $("#register-button").attr("disabled", !this.checked);
	});
	
});