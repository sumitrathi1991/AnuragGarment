<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.posthemes.com/pos_alexis/en/ -->
<html lang="en" class="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Anand Trading</title>
<meta name="description" content="Shop powered by PrestaShop">
<meta name="generator" content="PrestaShop">
<meta name="robots" content="index,follow">
<meta name="viewport"
	content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<head>
<meta name='layout' content='main' />
</head>
<body id="index"
	class="index hide-left-column hide-right-column lang_en">
	<div class="columns-container">
		<div id="columns" class="container">

			<!-- Breadcrumb -->
			<div class="breadcrumb clearfix">
				<a class="home" href="#" title="Return to Home">Home</a> <span
					class="navigation-pipe">&gt;</span> <span class="navigation_page">Address</span>
			</div>
			<!-- /Breadcrumb -->

			<!-- ================= Start ================= -->
			<div class="row">
				<div id="center_column" class="center_column  col-sm-12">
					<h1 id="cart_title" class="page-heading">Address</h1>

					<g:render template="checkoutSteps"/>
					<form action="" method="">
						<div class="order_carrier_content box">
							<p class="carrier_title">Choose your delivery method</p>
							<div class="delivery_options_address">
								<p class="carrier_title">Choose a shipping option for this
									address: My address</p>
								<div class="delivery_options">
									<div class="delivery_option item">
										<div>
											<table class="resume table table-bordered">
												<tbody>
													<tr>
														<td class="delivery_option_radio"><input
															id="delivery_option" class="delivery_option_radio"
															type="radio" name="delivery_option" value=""
															checked="checked"></td>
														<td class="delivery_option_logo"><img
															src="../images/product_thumb40x40.jpg" alt=""></td>
														<td>My carrierDelivery next day!</td>
														<td class="delivery_option_price">
															<div class="delivery_option_price">${cart.shippingCharge}</div>
														</td>
													</tr>
												</tbody>
											</table>
											<table
												class="delivery_option_carrier selected not-displayable">
												<tbody>
													<tr>
														<td class="first_item"><input type="hidden" value="2"
															name="id_carrier"> <i class="icon-info-sign"></i>Delivery
															next day!(Productconcerned:Sedposuere)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- end delivery_option -->
								</div>
								<!-- end delivery_options -->
							</div>
							<!-- end delivery_options_address -->
							<div id="extra_carrier" style="display: none;">
							<p class="carrier_title">Terms of service</p>
							<p class="checkbox">
								<input type="checkbox" name="cgv" id="cgv" value="1"> <label
									for="cgv">I agree to the terms of service and will
									adhere to them unconditionally.</label> <a href="#" class="iframe">(Read
									the Terms of Service)</a>
							</p>
							</div>
						</div>
						<p class="cart_navigation clearfix">
							<g:link class="button btn btn-default standard-checkout button-medium"
								title="Proceed to checkout" action="cart" controller="cart"> <span>Proceed
									to checkout<i class="icon-chevron-right right"></i>
							</span>
							</g:link>
							<a href="index.htm" class="button-exclusive btn btn-default"
								title="Continue shopping"> <i class="icon-chevron-left"></i>Continue
								shopping
							</a>
						</p>
					</form>
				</div>
				<!-- #center_column -->
			</div>
			<!-- ================= Ends ================= -->
		</div>
		<!-- #columns -->
	</div>
	<!-- .columns-container -->
	<!-- #page -->

	<div id="agree-tc" style="display: none;">
		<h4>YOU MUST AGREE TO THE TERMS OF SERVICE BEFORE CONTINUING.</h4>
	</div>

	<script type="text/javascript">
// Terms Condition Popup 
$("#tc-btn").click(function(){
	if($('#cgv').attr('checked')){
		$(this).attr("href", "index.htm");
	}
	else {
		$(this).attr("href", "#agree-tc")
		$(this).fancybox({
			'hideOnContentClick': false,
			'title':false
		});
	}
});
	
	
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