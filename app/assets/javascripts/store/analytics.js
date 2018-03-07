$(document).on('page:change', function() {
 if (window._gaq != null) {
  return _gaq.push(['_trackPageview']);
 } else if (window.pageTracker != null) {
  return pageTracker._trackPageview();
 }
});
$(document).ready(function(){
	$(document).on('click','#review_btn',function(){
		$(this).attr('disabled', true);
		validate_review();
	});
})

function validate_review(){
	var valid = true;
	if($("#review_reviewer_name").val() == ""){
		$("#review_reviewer_name").css('border', '1px solid red');
		valid = false;
	}
	if($("#review_reviewer_email").val() == ""){
		$("#review_reviewer_email").css('border', '1px solid red');
		valid = false;
	}
	if($("#review_title").val() == ""){
		$("#review_title").css('border', '1px solid red');
		valid = false;
	}
	if(valid){
		$("#review_form").submit();
	}
	else{
		$("#review_btn").removeAttr('disabled');
	}
}
