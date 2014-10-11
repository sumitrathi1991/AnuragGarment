<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.posthemes.com/pos_alexis/en/ -->
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name="description" content="Shop powered by PrestaShop">
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes"> 
       <head>
       <meta name='layout' content='main' />
        </head>
	 <body id="index" class="index hide-left-column hide-right-column lang_en">
	<div class="columns-container">
		<div id="columns" class="container">
											
                <!-- Breadcrumb -->
                <div class="breadcrumb clearfix">
                    <a class="home" href="#" title="Return to Home">Home</a>
                    <span class="navigation-pipe">&gt;</span>
					<span class="navigation_page">Address</span>
                </div>
                <!-- /Breadcrumb -->
				
				<!-- ================= Start ================= -->
				<div class="row">
					<div id="center_column" class="center_column  col-sm-12">
						<h1 id="cart_title" class="page-heading">Address</h1>

						<!-- Steps -->
						<ul class="step clearfix" id="order_step">
							<li class="step_done step_done_last second">
											<a href="order-step2.htm"><em>01.</em> Login</a>
									</li>
							<li class="step_current third">
											<span><em>02.</em> Address</span>
									</li>
							<li class="step_todo four">
											<span><em>03.</em> Shipping</span>
									</li>
							<li class="step_done first">
											<a href="order-step1.htm"><em>04.</em> Summary</a>
									</li>
							<li id="step_end" class="step_todo last">
								<span><em>05.</em> Payment</span>
							</li>
						</ul>
						<!-- /Steps -->
						<g:form action="shipping" method="POST" controller="cart">
							<div class="addresses clearfix">
								<div class="row">
									<div class="col-xs-12 col-sm-6">
										<div class="address_delivery select form-group selector1">
											<label for="addressTitle">Choose a delivery address:</label>
												<select id="addressTitle" name="addressTitle" class="address_select form-control">
												<g:each var="address" in="${addressList}">
													<option value="${address.addressTitle}" selected="selected">${address.addressTitle}</option>
												</g:each>
												</select>
											<span class="waitimage"></span>
										</div>
											
											<p class="checkbox addressesAreEquals">
											<input type="checkbox" name="same" id="addressesAreEquals" value="1" checked="checked">
											<label for="addressesAreEquals">Use the delivery address as the billing address.</label>
											</p>
										</p>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div id="address_invoice_form" class="select form-group selector1" style="display: none;">
											<label for="id_address_invoice" class="strong">Choose a billing address:</label>
													<select name="id_address_invoice" id="id_address_invoice" class="address_select form-control">
														<option value="23">My address</option>
														<option value="22">697</option>
													</select>
												<span class="waitimage"></span>
										</div>
									</div>
								</div> <!-- end row -->
								<div class="row">
									<div class="col-xs-12 col-sm-6">
										<ul class="address item box" id="address_delivery">
											<li class="address_title">
												<h3 class="page-subheading">Your delivery address</h3>
											</li>
											<li class="name">${addressList[0]?.fullName}</li>
											<li class="address1">${addressList[0]?.address1}</li>
											<li class="address2">${addressList[0]?.address2}</li>
											<li class="city">${addressList[0]?.city}</li>
											<li class="state">${addressList[0]?.state}</li>
											<li class="phoneNumber">${addressList[0]?.phoneNumber}</li>
											<%--<li class="address_update">
												<a class="button button-small btn btn-default" href="#" title="Update">
													<span>Update<i class="icon-chevron-right right"></i></span>
												</a>
											</li>
										--%></ul>
									</div>
								</div> <!-- end row -->
								<p class="address_add submit">
								<g:link action="createAddress" controller="cart" title="Add" class="button button-small btn btn-defaulticon-chevron-right right">Add a new address</g:link>
								</p>
							</div> <!-- end addresses -->
							<p class="cart_navigation clearfix">
								<button class="button btn btn-default standard-checkout button-medium" title="Proceed to checkout">
									<span>Proceed to checkout<i class="icon-chevron-right right"></i></span>
								</button>
								<g:link class="button-exclusive btn btn-default" title="Continue shopping" controller="home" action="index">
									<i class="icon-chevron-left"></i>Continue shopping
								</g:link>
							</p>
						</g:form>
						
	
					</div><!-- #center_column -->
				</div>	
				<!-- ================= Ends ================= -->
		</div><!-- #columns -->
	</div><!-- .columns-container -->
<!-- #page -->
<script type="text/javascript">

// Billing Address Dropdown List 
/* $("#addressesAreEquals").change(function() {
	if($(this).is(':checked')){
		$("#address_invoice_form").slideUp(100);
	}
	else{
		$("#address_invoice_form").slideDown(100);
	}
 });*/
 
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
		
</script>
</body>
</html>