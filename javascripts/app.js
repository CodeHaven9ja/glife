$(function(){
	
	$('input[title]').qtip({
		position: {
			target: 'mouse'
			}
		});
		
	$('select[title]').qtip({
		position: {
			target: 'mouse'
			}
		});
	
	$("#agree").click(function() {
	  $("#register-button").attr("disabled", !this.checked);
	});
	
});