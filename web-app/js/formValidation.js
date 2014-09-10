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
				$('#signupSpinner').show();
				var registerFormdata = $('#registerForm').serialize();
				jQuery
				.ajax({
					type : 'POST',
					url :  registerUrl,
					data : registerFormdata,
					success : function(data,textStatus) {
						$('#signupSpinner').hide();
						$('#updatesignupmessage').show();
						if(data.status == "success"){
							document.getElementById("registerForm").reset();
							
						}
						$('#updatesignupmessage').html(data.message);
					},
					error : function(XMLHttpRequest,textStatus,errorThrown) {
						$('#signupSpinner').hide();
						$('#updatesignupmessage').show();
						$('#updatesignupmessage').html("There is some error to create a new user please try again!");
						
					}
				});
			}
		});
	
	$("#login_form").validate({
		rules: {
			j_username: {
				required:true,
				email:true
				},
				j_password: {
					required: true
				}
		 },
			messages: {
				
				j_username: "Please enter a valid email address.",
				j_password: {
					required: "Please provide a password.",
				}
			},
			submitHandler : function() {
				var logingFormdata = $('#login_form').serialize();
				var registerFormUrl = $('#login_form').attr('action');
				$('#loginSpinner').show();
				loginUser(logingFormdata,"USER");
			}
		});
	
	$("#SubmitBtn").click(function(){
        $("#registerForm").submit();
        return false;
    });
	$("#SubmitLogin").click(function(){
        $("#login_form").submit();
        return false;
    });
 }
 function loginUser(logingFormdata,loginUser){
	   	jQuery
		.ajax({
			type : 'POST',
			url :  '/j_spring_security_check',
			data : logingFormdata,
			dataType : 'JSON',
			success : function(data, status, headers, config) {
				console.log("success json ");
				console.log(data.success);
				if(data.success){
					window.location.href = data.redirectURL;
					
					$('#loginSpinner').hide();
				}else{
					$('#loginSpinner').hide();
					$('#updateloginmessage').show();
					$('#updateloginmessage').html(data.error);
				}
			},
			error : function (data, status, headers, config) {
				console.log("error json ");
				console.log(data);
			}
		});
 }
 function loginOut(){
	jQuery
		.ajax({
			type : 'POST',
			url :  '/logout',
			success : function(data, status, headers, config) {
				console.log("logout success ");
				location.reload();
			},
			error : function(XMLHttpRequest,textStatus,errorThrown) {
				location.reload();
			}
		});
 }