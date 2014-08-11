 function registerValidation(){
	 
	$("#registerForm").validate({
		rules: {
			firstName: {
					required: true,
					minlength: 3
				},
			password: {
					required: true,
					minlength: 5
				},
				repassword: {
					required:true,
					minlength:5,
					equalTo:"#password"
				},
				emailAddress: {
					required:true,
					email:true
				},
				contact: {
					required:true,
					minlength:5
				},
				zipCode: {
					required:true,
					minlength:5
				}
		 },
			messages: {
				
				firstName: {
					required: "Please enter your name.",
					minlength: "At least 3 characters."
				},
				password: {
					required: "Please provide a password.",
					minlength: "At least 5 characters long."
				},
				repassword: {
					required: "Please provide confirm password.",
					minlength: "At least 5 characters long.",
					equalTo: "Please enter the same password as above."
				},
				emailAddress: "Please enter a valid email address.",
			   contact:{
				   required: "Please provide a valid contact number.",
					minlength: "At least 5 digits long."
				   
			   },
			   zipCode:{
				   required: "Please provide a valid zipcode number.",
				   minlength: "At least 5 digits long."
				   
			   }
			},
			submitHandler : function() {
				var registerFormdata = $('#registerForm').serialize();
				jQuery
				.ajax({
					type : 'POST',
					url :  registerUrl,
					data : registerFormdata,
					success : function(data,textStatus) {
						if(data.status == "success"){
							
							document.getElementById("registerForm").reset();
						}
						
					},
					error : function(XMLHttpRequest,textStatus,errorThrown) {
						alert("error")
					}
				});
			}
		});
	$("#SubmitBtn").click(function(){
        $("#registerForm").submit();
        return false;
    });
 }