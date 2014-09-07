<!-- Product PopUp -->
<div style="display: none;">
<div id="product_preview">
	<div class="primary_block row">
		<!-- left infos-->  
		<div class="pb-left-column col-sm-5 col-md-5">
			<ul id="etalage">
                  <li>
                      <a href="">
                          <img class="etalage_thumb_image" src="../images/t1.jpg" />
                          <img class="etalage_source_image" src="../images/t2.jpg" />
                      </a>
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t2.jpg" />
                      <img class="etalage_source_image" src="../images/t2.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t3.jpg" />
                      <img class="etalage_source_image" src="../images/t3.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t4.jpg" />
                      <img class="etalage_source_image" src="../images/t4.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t5.jpg" />
                      <img class="etalage_source_image" src="../images/t5.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t6.jpg" />
                      <img class="etalage_source_image" src="../images/t6.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="../images/t1.jpg" />
                      <img class="etalage_source_image" src="../images/t1.jpg" />
                  </li>
				</ul>
			</div> <!-- end pb-left-column -->
            <!-- end left infos--> 
            <!-- center infos -->
		<div class="pb-center-column col-sm-7 col-md-7">
			<h1>Sed posuere</h1>
                <div class="price">
					<p class="our_price_display" >
					<span id="our_price_display">$350.00</span>
					</p><p id="old_price"><span id="old_price_display"></span></p>
                </div>
			 
				<!--  /Module ProductComments -->			
                <p id="product_reference">
                    <label>Model </label>
                    <span class="editable" >demo_13</span>
				</p>
				<p id="product_condition">
				<label>Condition </label>
				<span class="editable">New</span></p>
							<div id="short_description_block">
											<div id="short_description_content" class="rte align_justify" itemprop="description"><p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p></div>
                                <p class="buttons_bottom_block">
                                    <a href="" class="button">
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
										<p id=""/home/oodles/shiv/ubuntu/Untitled Folder/MySpace/Servers"_p">
                                        <label>Quantity:</label>
                                        <input type="text" name="qty" id="quantity_wanted" class="text" value="1" style="border: 1px solid rgb(189, 194, 201);">
                                        <a href="#" data-field-qty="qty" class="btn btn-default button-minus product_quantity_down">
                                            <span><i class="icon-minus"></i></span>
                                        </a>
                                        <a href="#" data-field-qty="qty" class="btn btn-default button-plus product_quantity_up ">
                                            <span><i class="icon-plus"></i></span>
                                        </a>
                                        <span class="clearfix"></span>
                                    </p>
                                                            <!-- minimal quantity wanted -->
                                    <p id="minimal_quantity_wanted_p" style="display: none; color: rgb(55, 72, 83);">
                                        This product is not sold individually. You must select at least <b id="minimal_quantity_label">1</b> quantity for this product.
                                    </p>
                                </div> <!-- end product_attributes -->
                                <div class="box-cart-bottom">
                                    <div>
                                        <p id="add_to_cart" class="buttons_bottom_block no-print">
                                            <button type="submit" name="Submit" class="exclusive">
                                                <a href="#layer_cart" class="various"><span>Add to cart</span></a>
                                            </button>
                                        </p>
                                    </div>
                                    
                                    <p class="buttons_bottom_block no-print">
                                        <a id="wishlist_button" href="#" o title="Add to my wishlist">
                                            Add to my wishlist
                                        </a>
                                    </p>
            						<strong></strong>
                                </div> <!-- end box-cart-bottom -->
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
			<div class="layer_cart_product col-xs-12 col-md-6">
				<h2>
					<i class="icon-ok"></i>Product successfully added to your shopping cart
				</h2>
				<div class="product-image-container layer_cart_img"><img class="layer_cart_img img-responsive" src="images/t1.jpg" alt="Sed posuere" title="Sed posuere"></div>
				<div class="layer_cart_product_info">
					<span id="layer_cart_product_title" class="product-name">Sed posuere</span>
					<span id="layer_cart_product_attributes"></span>
					<div>
						<strong class="dark">Quantity</strong>
						<span id="layer_cart_product_quantity">7</span>
					</div>
					<div>
						<strong class="dark">Total</strong>
						<span id="layer_cart_product_price">$2,450.00</span>
					</div>
				</div>
			</div>
			<div class="layer_cart_cart col-xs-12 col-md-6">
				<h2>
					<!-- Plural Case [both cases are needed because page may be updated in Javascript] -->
					<span class="ajax_cart_product_txt_s ">
						There are <span class="ajax_cart_quantity">10</span> items in your cart.
					</span>
					<!-- Singular Case [both cases are needed because page may be updated in Javascript] -->
					<span class="ajax_cart_product_txt  unvisible" style="display: none;">
						There is 1 item in your cart.
					</span>
				</h2>
	
				<div class="layer_cart_row">
					<strong class="dark">Total products(tax excl.)</strong>
					<span class="ajax_block_products_total">$2,935.48</span>
				</div>
	
				<div class="layer_cart_row">
					<strong class="dark">
						Total shipping&nbsp;(tax excl.)
					</strong>
					<span class="ajax_cart_shipping_cost">$2.00</span>
				</div>
				<div class="layer_cart_row">	
					<strong class="dark">Total(tax excl.)</strong>
					<span class="ajax_block_cart_total">$2,937.48</span>
				</div>
				<div class="button-container">	
					<span class="continue btn btn-default button exclusive-medium" title="Continue shopping">
						<span>
							<i class="icon-chevron-left left"></i>Continue shopping
						</span>
					</span>
					<a class="btn btn-default button button-medium" href="#" title="Proceed to checkout" rel="nofollow">
						<span>
							Proceed to checkout<i class="fa fa-chevron-right right"></i>
						</span>
					</a>	
				</div>
			</div>
		</div>
	</div>
   <!-- / Layer Cart Popup /--> 
 