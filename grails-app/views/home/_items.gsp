<div class="tab-content">
					<!-- Products list -->
					<ul id="blocknewproducts" class="product_list grid row blocknewproducts tab-pane active">
						<g:each var="item" in="${itemList}">
						<li class="ajax_block_product  col-sm-4 col-md-3">
							<div class="product-container">
                                <div class="left-block">
                                    <div class="product-image-container">
                                        <a class="product_img_link"  title="Sed posuere">
                                            <img class="replace-2x img-responsive" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemSize[0].itemColor[0].imageList[0].name}"]"/>" alt="${item.itemName}" title="${item.itemName}" width="270" height="270" itemprop="image">
                                        </a>

                                       <a class="quick-view various" alt="${item.itemName}" width="270" height="270" href="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemSize[0].itemColor[0].imageList[0].name}"]"/>"><span>Quick view</span></a>
										<span class="new-box"><span class="new-label">New</span></span>																										 									</div>
                                </div>
								
                                <div class="right-block">
									<%--<div class="comments_note">	
                                        <div class="star_content clearfix">
											<div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star"></div>
                                              <div class="star"></div>
                                        </div>
									</div>--%>
                                        <h5>
                                            <a class="product-name" href="" title="${item.itemName}" >${item.itemName}</a>
                                        </h5>
                                        <p>Brand : ${item.itemBrand}</p>
                                        <p>Size : ${item.itemSize[0].itemSizeValue}   | Color : ${item.itemSize[0].itemColor[0].itemColorValue }  </p>
                                          <p class="product-desc">Description : 
                                          ${item.itemDescription}
                                          </p>
                                            <div class="content_price">
                                                <span class="price product-price">&#8377;${item.itemPrice}</span>
                                            </div>
                                            <div class="button-container">
                                                <div class="actions">                                  				 											
                                                    <button class="button ajax_add_to_cart_button btn btn-default"  title="Add to cart" onclick="showAddToCartPopup(this)" productId="${item.id}"><span>Add to cart</span></button>                                            
                                                    <div class="wishlist">
                                                        <g:link class="addToWishlist wishlistProd_13" action="productDetail" controller="home" params="[productId : "${item.id}"]" title="Product Detail">
                                                            View Details
                                                        </g:link>
                                                    </div>
                                                     <g:link action="showProducts" controller="home" params="[itemBrand:"${item.itemBrand}"]" itemprop="url" class="button lnk_view btn btn-default" href="#" title="More Products"><span>More Items</span></g:link>
                                                </div>
                                            </div>
									</div>                    
								</div>
                           	 	<!-- .product-container> -->
							</li>
							</g:each>
                    </ul>
	
                <!-- Products list -->
                <ul id="blockbestsellers" class="product_list grid row blockbestsellers tab-pane">
                       <li class="ajax_block_product  col-sm-4 col-md-3">
							<div class="product-container">
                                <div class="left-block">
                                    <div class="product-image-container">
                                      	<a class="quick-view" href="" rel=""><span>Quick view</span></a>
										<span class="new-box"><span class="new-label">New</span></span>																										 									</div>
                                </div>
								
                                <div class="right-block">
									<div class="comments_note">	
                                        <div class="star_content clearfix">
											<div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star"></div>
                                              <div class="star"></div>
                                        </div>
									</div>
                                        <h5>
                                            <a class="product-name" href="#" title="Sed posuere" >Sed posuere</a>
                                        </h5>
                                          <p class="product-desc">
                                              Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti...
                                          </p>
                                            <div class="content_price">
                                                <span class="price product-price">$350.00</span>
                                            </div>
                                            <div class="button-container">
                                                <div class="actions">                                  				 											
                                                    <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart" data-id-product="13"><span>Add to cart</span></a>                                            
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_13" href="#" rel="13">
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                     <a class="button lnk_view btn btn-default" href="#" title="View"><span>More</span></a>
                                                </div>
                                            </div>
									</div>                    
								</div>
                           	 	<!-- .product-container> -->
							</li>                
                	</ul>
			</div>
