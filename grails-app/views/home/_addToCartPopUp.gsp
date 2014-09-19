<!-- Product PopUp -->
<div style="display: none;">
<div id="product_preview">
	<div class="primary_block row">
		<!-- left infos-->  
		<div class="pb-left-column col-sm-5 col-md-5">
			<ul id="etalage">
					<%--<li>
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
				--%></ul>
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
				<p id="product_condition">
				<label>Condition </label>
				<span class="editable">New</span></p>
							<div id="short_description_block">
					<div id="short_description_content" class="rte align_justify">
						
					</div>
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
                                        <label>Quantity:</label>
                                        <input type='button' class='btn btn-default qtyminus' value='-' field='quantity' />
    									<input type='text' name='quantity' value='0' class='btn btn-default qty' />
    									<input type='button' class='btn btn-default qtyplus' value='+'  field='quantity' />
                                        <span class="clearfix"></span>
                                        <!-- minimal quantity wanted -->
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
						<div class="col-xs-12 col-md-12 product_row clearfix">
							<div class="col-xs-6 col-md-6">
								<div class="product-image-container layer_cart_img"><img class="layer_cart_img img-responsive" src="images/product_thumb.jpg" width="70px" alt="Sed posuere" title="Sed posuere"></div>
								<div class="layer_cart_product_info">
									<span id="layer_cart_product_title" class="product-name">Sed posuere<a href="#" class="icon-remove-sign remove_cart_product"></a></span>
									<ul>
										<li>
											<strong class="dark">Quantity:</strong>
											<span id="layer_cart_product_quantity">1</span>
											<span class="divider">|</span>
										</li>
										<li>
											<strong class="dark">Color:</strong>
											<span id="layer_cart_product_price">White</span>
											<span class="divider">|</span>
										</li>
										<li>
											<strong class="dark">Size:</strong>
											<span id="layer_cart_product_price">8</span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="col-xs-3 col-md-3 text-center">
								<span class="layer_cart_product_price">$68.00</span>
							</div>
							
							<div class="col-xs-3 col-md-3 text-center">
								<span class="layer_cart_product_price">$68.00</span>
							</div>
						</div>
						<div class="col-xs-12 col-md-12 product_row clearfix">
							<div class="col-xs-6 col-md-6">
								<div class="product-image-container layer_cart_img"><img class="layer_cart_img img-responsive" src="images/product_thumb.jpg" width="70px" alt="Sed posuere" title="Sed posuere"></div>
								<div class="layer_cart_product_info">
									<span id="layer_cart_product_title" class="product-name">Sed posuere<a href="#" class="icon-remove-sign remove_cart_product"></a></span>
									<ul>
										<li>
											<strong class="dark">Quantity:</strong>
											<span id="layer_cart_product_quantity">1</span>
											<span class="divider">|</span>
										</li>
										<li>
											<strong class="dark">Color:</strong>
											<span id="layer_cart_product_price">White</span>
											<span class="divider">|</span>
										</li>
										<li>
											<strong class="dark">Size:</strong>
											<span id="layer_cart_product_price">8</span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="col-xs-3 col-md-3 text-center">
								<span class="layer_cart_product_price">$68.00</span>
							</div>
							
							<div class="col-xs-3 col-md-3 text-center">
								<span class="layer_cart_product_price">$68.00</span>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
   <!-- / Layer Cart Popup /--> 
 