function registerValidationAdmin(){
	$("#loginAdminForm").validate({
		rules: {
			j_username: {
				required:true,
				
				},
				j_password: {
					required: true
				}
		 },
			messages: {
				
				j_username: "Please enter a valid username or email address.",
				j_password: {
					required: "Please provide a password.",
				}
			},
			submitHandler : function() {
				$('#updateadminmessage').show();
				var logingFormdata = $('#loginAdminForm').serialize();
				loginUser(logingFormdata,"ADMIN");
			}
		});
}

$("#SubmitAdminLogin").click(function(){
	alert("hello");
	
   // $("#loginAdminForm").submit();
    return false;
});