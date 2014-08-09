 function registerValidation(){
	 $("#createAccountForm").validate({
		 rules: {
				
				/*name: {
					required: true,
					minlength: 3
				},
				password: {
					required: true,
					minlength: 8
				},
				password2: {
					required:true,
					minlength:8,
					equalTo:"#password"
				},
				email: {
					required:true,
					email:true
				},
				contact: {
					required:true,
					minlength:5
				}*/
		 },
			messages: {
				
				/*name: {
					required: "Please enter a name.",
					minlength: "At least 3 characters."
				},
				
				password: {
					required: "Please provide a password.",
					minlength: "At least 8 characters long."
				},
				password2: {
					required: "Please provide confirm password.",
					minlength: "At least 8 characters long.",
					equalTo: "Please enter the same password as above."
				},
				email: "Please enter a valid email address.",
			   contact:{
				   required: "Please provide a valid contact number.",
					minlength: "At least 5 digits long."
				   
			   }*/
			},
			submitHandler : function() {
				
				alert("working");
			}
	 });
 }