 
 <!-- Layer Cart Popup -->
 <div id="layer_cart" style="display: none;">
		<div class="clearfix">
			<div class="layer_cart_product">
				<h2><i class="icon-ok"></i>Product successfully added to your shopping cart</h2>
						<div class="col-xs-12 col-md-12 product_head clearfix">
							<div class="col-xs-6 col-md-6">
								<strong class="">Item in cart:</strong>
							</div>
							<div class="col-xs-3 col-md-3">
								<strong class="">Price:</strong>
							</div>
							<div class="col-xs-3 col-md-3">
								<strong class="">Total:</strong>
							</div>
						</div>
						<div id="cartData">
						
						</div>
						<div>
							Total Product : <span class="total"></span>
						</div>
						<g:link action="cart" controller="cart">Checkout</g:link>
						<button onclick="hide()">Continue</button>
						
			</div>
		</div>
	</div>
   <!-- / Layer Cart Popup /--> 
<script>
function hide(){
$('.fancybox-overlay').hide()
}
</script>