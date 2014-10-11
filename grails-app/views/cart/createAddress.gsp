<!DOCTYPE html>
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name="description" content="Shop powered by PrestaShop">
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="layout" content="main"> 
       <head>
        </head>
	 <body id="address" class="index hide-left-column hide-right-column lang_en">
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	<div class="columns-container">
		<div id="columns" class="container">
											
                <!-- Breadcrumb -->
                <div class="breadcrumb clearfix">
                    <a class="home" href="#" title="Return to Home">Home</a>
                    <span class="navigation-pipe">&gt;</span>
					<span class="navigation_page">Your Addresses</span>
                </div>
                <!-- /Breadcrumb -->
				
				<!-- ================= Start ================= -->
				<div class="row">
					<div id="center_column" class="center_column  col-sm-12">
						<div class="box">
							<h1 class="page-subheading">Your addresses</h1>
							<p class="info-title">To add a new address, please fill out the form below.</p>
							<p class="required"><sup>*</sup>Required field</p>
							<g:formRemote name="addAddress" url="[action:'saveAddress', controller:'cart']" class="std" id="addAddress"  after="showMessage(data)">
							<!--h3 class="page-subheading">Your address</h3-->
								<div class="form-group">
									<label for="fullName">Full name <sup>*</sup></label>
									<input class="form-control" type="text" name="fullName" id="fullName" value="">
								</div>
								<div class="form-group">
									<label for="address1">Address (Line 1)<sup>*</sup></label>
									<input class="form-control" type="text" id="address1" name="address1" value="">
								</div>
								<div class="required form-group">
									<label for="address2">Address (Line 2)</label>
									<input class="form-control" type="text" id="address2" name="address2" value="">
								</div>
								<div class="required form-group">
									<label for="city">City <sup>*</sup></label>
									<input class="form-control" type="text" name="city" id="city" value="" >
								</div>
								<div class="form-group">
									<label for="id_state">State <sup>*</sup></label>
									<select name="state" id="state" class="form-control">
										<option value="1">New Delhi</option>
									</select>
								</div>
								<div class="form-group">
									<label for="zipcode">Zip/Postal Code <sup>*</sup></label>
									<input class="form-control" type="text" id="zipcode" name="zipcode" value="" maxlength="6">
								</div>
								<div class="clearfix"></div>
								<div class="required form-group">
									<label for="phoneNumber">Mobile phone <sup>**</sup></label>
									<input class="form-control" type="tel" id="phoneNumber" name="phoneNumber" value="" maxlength="10">
								</div>
									<div class="clearfix"></div>
								<div class="form-group" id="adress_alias">
									<label for="alias">Please assign an address title for future reference. <sup>*</sup></label>
									<input type="text" id="alias" class="form-control" name="addressTitle" value="">
								</div>
								<span id="resultSuccess" style="display: none;">Address saved successfully</span>
								<span id="resultError" style="display: none;">Error in saving address.Please try again.</span>
								<p class="submit">
									<button type="submit" name="submitAddress" id="submitAddress" class="btn btn-default button button-small" onclick="validateAddressForm()"><span>Save<i class="icon-chevron-right right"></i></span>
									</button>
								</p>
						</g:formRemote>
					</div>
						<ul class="footer_links clearfix">
							<li>
								<g:link class="btn btn-default button button-small" action="address" controller="cart">
									<span><i class="fa fa-chevron-left"></i> Back to your addresses</span>
								</g:link>
							</li>
						</ul>
					</div>
				</div>	
				<!-- ================= Ends ================= -->
		</div><!-- #columns -->
	</div><!-- .columns-container -->
			
            <!-- Footer -->
<!-- #page -->
<script type="text/javascript">
$(document).ready(function(){
	validateAddressForm();
})


function validateAddress(){
	return $('#addAddress').valid()
	
}

// Billing Address Dropdown List 
 $("#addressesAreEquals").change(function() {
	if($(this).is(':checked')){
		$("#address_invoice_form").slideUp(100);
	}
	else{
		$("#address_invoice_form").slideDown(100);
	}
 });

function showMessage(data){
	if(data.result == 'error')
		$('#resultError').show().delay(2000).fadeOut();
}
 
 // Brands Logo Slider
$('.pos-logo .bxslider').bxSlider({
            auto: 0,
            slideWidth:200,
			slideMargin: 5,
			minSlides: 1,
			maxSlides: 6,
			speed:  3000,
			pause: 600,
			controls: 1,
            pager: false,
		});

jQuery.validator.addMethod("phone", function (phone_number, element) {
    phone_number = phone_number.replace(/[^\w\s]/gi, '');
    return this.optional(element) || phone_number.length == 10  &&
          phone_number.match(/\d{10}/);
}, "Invalid phone number");


function validateAddressForm() {
	$('#addAddress').validate({
		rules: {
		fullName: {
				required: true,
			},
			phoneNumber: {
				required: true,
				maxlength: 10,
				phone: true
			},
			address1: {
				required: true,
			},
			state: {
				required: true,
			},
			city: {
				required: true,
			},
			addressTitle: {
				required: true,
			},
			zipcode: {
				required: true,
				maxlength: 6,
				digits: true
			},
		},
		messages: {
			fullName: {
				required: "<i class='icon-warning-sign'>Please provide Full Name</i> ",
			},
			phoneNumber: {
				required: "<i class='icon-warning-sign'> Please provide phoneNumber</i>",
				maxlength: "<i class='icon-warning-sign'> At most 10 characters long</i> ",
				phoneUS: "<i class='icon-warning-sign'> Please enter valid number</i>"
			},
			address1: {
				required: "<i class='icon-warning-sign'> Please provide address1</i>",
			},
			state: {
				required: "<i class='icon-warning-sign'> Please provide state</i>",
			},
			city: {
				required: "<i class='icon-warning-sign'> Please provide city</i>",
			},
			addressTitle: {
				required: "<i class='icon-warning-sign'> Please provide address title</i>",
			},
			zipcode: {
				required: "<i class='icon-warning-sign'> Please provide a zipcode</i>",
				maxlength: "<i class='icon-warning-sign'> At most 6 characters long</i>",
				digits: "<i class='icon-warning-sign'> Please enter digits only</i>"
			},
		}
	});
}

</script>
</body>
</html>