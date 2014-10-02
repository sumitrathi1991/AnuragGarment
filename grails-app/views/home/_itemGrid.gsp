<!-- Products list -->
<ul class="product_list grid row" style="opacity: 1;">
	<g:if test="${items.size > 0}">
		<g:each var="item" in="${items}">
			<li class="ajax_block_product col-sm-6 col-md-4">
				<div class="product-container clearfix">
					<div class="left-block">
						<div class="product-image-container">
							<a class="product_img_link" href="#" title="White Sport Shoes">
								<img class="replace-2x img-responsive"
								src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemSize[0].itemColor[0].imageList[0].name}" ]"/>"
								alt="${item.itemName}" title="${item.itemName}" width="270"
								height="270"></a> 
								<a class="quick-view various" alt="${item.itemName}" width="270" height="270" href="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemSize[0].itemColor[0].imageList[0].name}" ]"/>"><span>Quickview</span></a> 
								<span class="new-box"><span class="new-label">New</span></span>
						</div>
					</div>
					<div class="right-block">
						<%--<div class="comments_note" itemprop="aggregateRating">	
                                                    <div class="star_content clearfix">
														<div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star star_on"></div>
                                                          <div class="star"></div>
                                                    </div>
                                                </div>
                                                	--%>
						<h5>
							<a class="product-name" title="${item.itemName}">
								${item.itemName}
							</a>
						</h5>
						<p>
							Brand :
							${item.itemBrand}
						</p>
						<p>
							Size : ${item.itemSize[0].itemSizeValue} | Color :	${item.itemSize[0].itemColor[0].itemColorValue }
						</p>
						<p class="product-desc">
							Description :
							${item.itemDescription}
						</p>
						<div class="content_price">
							<span class="price product-price">&#8377;${item.itemPrice}</span>
							<meta content="1">
						</div>
						<div class="button-container">
							<div class="actions">
							<button class="button ajax_add_to_cart_button btn btn-default"  title="Add to cart" onclick="showAddToCartPopup(this)" productId="${item.id}"><span>Add to cart</span></button>
								<g:link action="productDetail" controller="home"
									params="[productId : " ${item.id}"]" title="Product Detail"
									class="button lnk_view btn btn-default">
									<span>More</span>
								</g:link>
							</div>
						</div>
						<div class="color-list-container"></div>
						<div class="product-flags"></div>
						<span class="availability"></span>
					</div>
				</div>
				<!-- .product-container> -->
			</li>
		</g:each>
	</g:if>
	<g:else>
		<p>No match found with this criteria</p>
	</g:else>
</ul>
