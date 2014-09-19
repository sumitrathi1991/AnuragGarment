
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

// Dropdown list of the page:
$('.dropdownlist').change(function(){
	etalage_show( $(this).find('option:selected').attr('class') );
});
$('.control').click(function(){
	if($(this).hasClass('inactive')) {
		$(this).removeClass('inactive');
		$(this).addClass('active');
		$('.pos-demo-wrap').animate({left:'0'}, 500);
	} else {
		$(this).addClass('inactive');
		$('.pos-demo-wrap').animate({left:'-210px'}, 500);
	}
});
var CUSTOMMENU_POPUP_EFFECT = 0;
var CUSTOMMENU_POPUP_TOP_OFFSET = 40;
	
// TOC, shows how to scroll the whole window
$('#BrandsType a').click(function(){//$.scrollTo works EXACTLY the same way, but scrolls the whole screen
$.scrollTo( this.hash, 1500, { easing:'elasout' });
});

//Quantity Input With plus & minus buttons
jQuery(document).ready(function(){
    // This button will increment the value
    $('.qtyplus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If is not undefined
        if (!isNaN(currentVal)) {
            // Increment
            $('input[name='+fieldName+']').val(currentVal + 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
    // This button will decrement the value till 0
    $(".qtyminus").click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If it isn't undefined or its greater than 0
        if (!isNaN(currentVal) && currentVal > 0) {
            // Decrement one
            $('input[name='+fieldName+']').val(currentVal - 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
});

