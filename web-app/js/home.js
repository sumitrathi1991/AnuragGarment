
//registerValidation();

function loginView(){
$("#homeViewId").hide();
$("#loginViewID").show();
}
function homeView(){
$("#loginViewID").hide();
}
function showSpinner(){
	 $('#forgotPasswordSpinner').show();
	 $('#updateForgotPasswordMessage').hide();
	 }
function hideSpinner(){
	 $('#forgotPasswordSpinner').hide();
	 $('#updateForgotPasswordMessage').show();
	 $('#forgotEmail').val('');
	 }


// Brand Logos Slider 
$(document).ready(function(){
	$('.pos-logo .bxslider').bxSlider({
	    auto: true,
	    slideWidth:200,
		slideMargin: 5,
		minSlides: 1,
		maxSlides: 6,
		speed:  4000,
		pause: 4000,
		controls: 1,
		autoHover: true,
	    pager: false,
	});

});