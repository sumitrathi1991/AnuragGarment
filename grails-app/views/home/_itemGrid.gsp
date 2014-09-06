<!-- Products list -->
       						 <ul class="product_list grid row" style="opacity: 1;">
       						 <g:if test="${items.size > 0}">
       						 <g:each var="item" in="${items}">
                                    <li class="ajax_block_product col-sm-6 col-md-4">
                						<div class="product-container clearfix">
                                            <div class="left-block">
                                                <div class="product-image-container">
                                                    <a class="product_img_link" href="#" title="White Sport Shoes" itemprop="url">
                                                        <img class="replace-2x img-responsive" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemColor[0].imageList[0].name}"]"/>" alt="${item.itemName}" title="${item.itemName}" width="270" height="270" itemprop="image">
                                                    </a>
                                                    <g:link class="quick-view" action="productDetail" controller="home" params="[productId : "${item.id}"]"><span>Quick view</span></g:link>
													<span class="new-box"><span class="new-label">New</span></span>																										 												</div>
                                            </div>
                    						<div class="right-block">           
                                                <div class="comments_note" itemprop="aggregateRating">	
                                                    <div class="star_content clearfix">
														<div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star"></div>
                                                    </div>
                                                </div>
                                                	<h5 itemprop="name"><a class="product-name" href="" title="${item.itemName}" itemprop="url">${item.itemName}</a></h5>
                                                        <p class="product-desc" itemprop="description">
                                                        ${item.itemDescription}    
                                                        </p>
                                            			<div itemprop="offers" class="content_price">
                                                            <span itemprop="price" class="price product-price">&#8377;${item.itemSize.itemPrice}</span>
                                                             <meta itemprop="priceCurrency" content="1">
														</div>
                                            			<div class="button-container">
                                                            <div class="actions">
                                                                                                                
                                                            <div class="wishlist">
                                                                <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart" data-id-product="13"><span>Add to cart</span></a>
                                                            </div>
                                                                <g:link action="productDetail" controller="home" params="[productId : "${item.id}"]" title="Product Detail" class="button lnk_view btn btn-default"><span>More</span></g:link>
                                                            </div>
                        								</div>
                                                			<div class="color-list-container"> </div>
                                            					<div class="product-flags"> </div>
                                                                 <span itemprop="offers" class="availability"></span>
                                                 </div>
                                				</div><!-- .product-container> -->
           								 </li>
           								 </g:each>
           								 </g:if>
           								 <g:else>
           								 <p>No match found with this criteria</p>
           								 </g:else>
            						</ul>
