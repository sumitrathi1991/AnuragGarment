<!-- Product PopUp -->
<div style="display: none;">
<div id="product_preview">
	<div class="primary_block row">
		<!-- left infos-->  
		<div class="pb-left-column col-sm-5 col-md-5">
			<ul id="etalage">
				</ul>
			</div> <!-- end pb-left-column -->
            <!-- end left infos--> 
            <!-- center infos -->
		<div class="pb-center-column col-sm-7 col-md-7">
				<h1 class="itemName"></h1>
                <div class="price">
					<p class="our_price_display" >
						<span id="our_price_display"></span>
					</p><p id="old_price"><span id="old_price_display"></span></p>
                </div>
			 
				<!--  /Module ProductComments -->			
                <p id="product_reference">
					<label>Designed By</label> <span class="editable brand"></span>
				</p>
				<p>Size : <span class="itemSize"></span> | Color :   <span class="itemColor"></span></p>
				<p id="product_condition">
				<label>Condition </label>
				<span class="editable">New</span></p>
							<div id="short_description_block">
					<div id="short_description_content" class="rte align_justify">
						
					</div>
                                <p class="buttons_bottom_block">
                                    <a href="javascript:void(0)" class="button">
                                        More details
                                    </a>
                                </p>
							</div> <!-- end short_description_block -->
							<!-- number of item in stock -->
                            <p id="pQuantityAvailable">
                                <span id="quantityAvailable">45</span>
                            </p>
							<!-- availability -->
                            <p id="availability_statut">
                                
                                <span id="availability_value">In stock</span>				
                            </p>
							<p class="warning_inline" id="last_quantities" style="display: none">Warning: Last items in stock!</p>
							<p id="availability_date" style="display: none;">
                            <span id="availability_date_label">Availability date:</span>
                            <span id="availability_date_value"></span>
							</p>
                            <!-- Out of stock hook -->
                            <div id="oosHook" style="display: none;">
                                
                            </div>
			

							<!-- add to cart form-->
                        	<form id="buy_block">
                           
                            <div class="box-info-product">
                                <div class="content_prices clearfix">
                                      <!-- prices -->
                                         <!-- end prices -->
                                        <p id="reduction_amount" style="display:none">
                                            <span id="reduction_amount_display">
                                                                            </span>
                                        </p>
                                                                                                                         
                                    <div class="clear"></div>
                                </div> <!-- end content_prices -->
                                <div class="product_attributes clearfix">
                                    	<!-- quantity wanted -->
                                        <label>Quantity:</label>
                                        <input type='button' class='btn btn-default qtyminus' value='-' field='quantity' />
    									<input type='text' name='quantity'  id="quantity" value='0' class='btn btn-default qty' />
    									<input type='button' class='btn btn-default qtyplus' value='+'  field='quantity' />
                                        <span class="clearfix"></span>
                                        <!-- minimal quantity wanted -->
                                </div> <!-- end product_attributes -->
                                <div id="noQuantity" style="display:none;">Please enter valid quantity first.</div>
                                <div class="box-cart-bottom">
                                    <div>
                                        <p id="add_to_cart" class="buttons_bottom_block no-print">
                                                <button type="button" id="addToCart" class="exclusive"><span>Add to cart</span></button>
                                        </p>
                                    </div>
                                    <strong></strong>
                                </div> <!-- end box-cart-bottom -->
                                <div id="errorMessage" style="display: none;"></div>
                            </div> <!-- end box-info-product -->
                        </form>
					
		</div> <!-- end pb-right-column-->
	</div>
 </div>
 </div>
 <!-- / Product PopUp /-->

 
 <!-- Layer Cart Popup -->
 <div id="layer_cart" style="display: none;">
		<div class="clearfix">
			<div class="layer_cart_product">
				<h2><i class="icon-ok"></i>Product successfully added to your shopping cart</h2>
						<div class="col-xs-12 col-md-12 product_head clearfix">
							<div class="col-xs-6 col-md-6">
								<strong class="">Item in cart:</strong>
							</div>
							<div class="col-xs-2 col-md-2">
								<strong class="">Price:</strong>
							</div>
							<div class="col-xs-2 col-md-2">
								<strong class="">Quantity:</strong>
							</div>
							<div class="col-xs-2 col-md-2">
								<strong class="">Total:</strong>
							</div>
						</div>
						<div id="cartData" class="product_body"></div>
						<div class="col-xs-12 col-md-12 product_footer clearfix">
							<div class="col-xs-6 col-md-6">
								<strong>Product Total:</strong>
							</div> 
							<div class="col-xs-6 col-md-6">
								<strong class="total"></strong>
							</div>
							<div class="submit">
								<a href="javascript:$.fancybox.close();" class="btn btn-default button btn-grey button-medium Cart-btn"><span>Continue</span></a>
								<g:link action="continueCheckout" controller="cart" class="btn btn-default button button-medium Cart-btn"><span>Checkout</span></g:link>
							</div>
						</div>
						
						
			</div>
		</div>
	</div>
   <!-- / Layer Cart Popup /--> 
<script>
function hide(){
$('.fancybox-overlay, .fancybox-opened').hide()
$('#layer_cart').hide()
}
</script> 
 