$().ready(function() {

	$("#accept-agreement").click(function() {
		if ($(this).is(":checked")) {
			$("#submitbutton").prop("disabled", false);
		}
		else {
			$("#submitbutton").prop("disabled", true);
		}
	});

	$("#submitbutton").click( function () {

		var formId = $("form.form-horizontal").attr('id');
		
		var emailId = formId == 'customersignupform' ? 'email' : 'Email';
		
		
	
		var email = $("#" + emailId).val();
		var login = $("#user_login").val();
		
		if (!email || !login) {
			$("#submitbutton").prop("disabled", $('#' + formId).valid());
			$('#' + formId).submit();
			return false;
		}
		
		  $.getJSON( "/signup/checkduplicate?email=" + email + "&login=" + login, function( data ) {
			  if (data.result == 'success') {
				  $('#' + formId).submit();
				  $("#submitbutton").prop("disabled", $('#' + formId).valid());
			  } else {
				  $("#cdn_form_dynamic_msg").html(data.message).show();
				  // $("#submitbutton").prop("disabled", false);
			  }
			  
		  });
		  return false;
});

});
	


