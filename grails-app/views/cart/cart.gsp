<!DOCTYPE html>
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
					<span class="navigation_page"> YOUR SHOPPING CART</span>
                </div>
                <!-- /Breadcrumb -->
				
				<!-- ================= Start ================= -->
				<div class="row">
					<div id="center_column" class="center_column  col-sm-12">
						<h1 id="cart_title" class="page-heading">Shopping-cart summary
							<span class="heading-counter">Your shopping cart contains: <span id="summary_products_quantity">${cart?.cartLines?.size() } product</span></span>
						</h1>

						<!-- Steps -->
						<ul class="step clearfix" id="order_step">
							<li class="step_current  first">
											<span><em>01.</em> Summary</span>
									</li>
							<li class="step_todo second">
											<span><em>02.</em> Login</span>
									</li>
							<li class="step_todo third">
											<span><em>03.</em> Address</span>
									</li>
							<li class="step_todo four">
											<span><em>04.</em> Shipping</span>
									</li>
							<li id="step_end" class="step_todo last">
								<span><em>05.</em> Payment</span>
							</li>
						</ul>
						<!-- /Steps -->
						<g:if test="${cart?.cartLines?.size() == 0}">
						<p id="emptyCartWarning" class="alert alert-warning">Your shopping cart is empty.</p>
						</g:if>
						<div id="order-detail-content" class="table_block table-responsive">
							<table id="cart_summary" class="table table-bordered">
								<thead>
									<tr>
										<th class="cart_product first_item">Product</th>
										<th class="cart_description item">Description</th>
										<th class="cart_avail item">Avail.</th>
										<th class="cart_unit item">Unit price</th>
										<th class="cart_quantity item">Qty</th>
										<th class="cart_total item">Total</th>
										<th class="cart_delete last_item">&nbsp;</th>
									</tr>
								</thead>
								<tfoot>
										<tr class="cart_total_price">
											<td rowspan="3" colspan="2" id="cart_voucher" class="cart_voucher"></td>
											<td colspan="3" class="text-right">Total products</td>
											<td colspan="2" class="price" id="total_product">${cart?.getProductTotal()}</td>
										</tr>
										<tr style="display: none;">
											<td colspan="3" class="text-right">Total gift-wrapping cost:</td>
											<td colspan="2" class="price-discount price" id="total_wrapping">$0.00</td>
										</tr>
										<tr class="cart_total_delivery">
											<td colspan="3" class="text-right">Total shipping</td>
											<td colspan="2" class="price" id="total_shipping">$2.00</td>
										</tr>
										<tr class="cart_total_voucher" style="display:none">
											<td colspan="3" class="text-right">Total vouchers</td>
											<td colspan="2" class="price-discount price" id="total_discount">$0.00</td>
										</tr>
										<tr class="cart_total_price">
											<td colspan="3" class="total_price_container text-right"><span>Total</span></td>
											<td colspan="2" class="price" id="total_price_container"><span id="total_price">${cart?.getGrandTotal()}</span></td>
										</tr>
								</tfoot>
								<tbody>
								<g:each var="cartLine" in="${cart?.cartLines}">
									<tr class="cart_item last_item first_item address_22 odd">
										<td class="cart_product">
											<a href="#"><img src="../images/product_thumb.jpg" alt="Faded Short" width="100" height="100"></a>
										</td>
										<td class="cart_description">
											<p class="product-name"><a href="#">${cartLine?.name}</a></p>
											<p>Size : ${cartLine?.size} | Color :	${cartLine?.color}</p>
										</td>
										<td class="cart_avail"><span class="label label-success">In Stock</span></td>
										<td class="cart_unit" data-title="Unit price">
											<span class="price" id="product_price_1_0_22">
												<span class="price">${cartLine?.price}</span>
											</span>
										</td>
										<td class="cart_quantity text-center">
											<input size="2" type="text" class="cart_quantity_input form-control grey" value="${cartLine?.quantity}">
											<div class="cart_quantity_button clearfix">
												<a class="cart_quantity_down btn btn-default button-minus" href="#" title="Subtract">
													<span><i class="icon-minus"></i></span>
												</a>
												<a class="cart_quantity_up btn btn-default button-plus" href="#" title="Add">
													<span><i class="icon-plus"></i></span>
												</a>
											</div>
										</td>
										<td class="cart_total">
											<span class="price" id="total_product_price_1_0_22">${cartLine?.price * cartLine?.quantity as BigDecimal}</span>
										</td>
										<td class="cart_delete text-center">
											<div>
												<a title="Delete" class="cart_quantity_delete" href="#"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									</g:each>
								</tbody>
							</table>
						</div> <!-- end order-detail-content -->

						<p class="cart_navigation clearfix">
							<g:link class="button btn btn-default standard-checkout button-medium" title="Proceed to checkout" action="address" controller="cart">
								<span>Proceed to checkout<i class="icon-chevron-right right"></i></span>
							</g:link>
							<g:link class="button-exclusive btn btn-default" title="Continue shopping" action="index" controller="home">
								<i class="icon-chevron-left"></i>Continue shopping
							</g:link>
						</p>
	
					</div><!-- #center_column -->
				</div>	
				<!-- ================= Ends ================= -->
		</div><!-- #columns -->
	</div><!-- .columns-container -->
<script type="text/javascript">
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