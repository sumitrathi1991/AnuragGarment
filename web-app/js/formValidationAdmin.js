function registerValidation(){
	 
	$("#uploadItemForm").validate({
		rules: {
			itemName: {
					required: true,
					minlength: 3
				},
				itemDescription: {
					required: true,
					minlength: 10
				},
				itemQuantity: {
					required:true,
					minlength:1
				},
				itemPrice: {
					required:true,
					minlength:2
				}
		 },
			messages: {
				
				itemName: {
					required: "Please provide item name.",
					minlength: "At least 3 characters."
				},
				itemDescription: {
					required: "Please provide small description about the item.",
					minlength: "At least 10 characters long."
				},
				
				itemQuantity:{
				   required: "Please provide a valid quantity number for item in stock.",
					minlength: "At least 1 digits long."
				   
			   },
			   itemPrice:{
				   required: "Please provide a valid price for Item.",
				   minlength: "At least 2 digits long."
				   
			   }
			},
			submitHandler : function() {
				//$('#signupSpinner').show();
				var registerFormdata = $('#uploadItemForm').serialize();
				jQuery
				.ajax({
					type : 'POST',
					url :  registerUrl,
					data : registerFormdata,
					success : function(data,textStatus) {
						
					},
					error : function(XMLHttpRequest,textStatus,errorThrown) {
						
					}
				});
			}
		});
		
 }
 