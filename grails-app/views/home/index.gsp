<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.posthemes.com/pos_alexis/en/ -->
<html lang="en" class="">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name='layout' content='main' />
		<meta name="description" content="Shop powered by PrestaShop">
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes"> 
        
        </head>
	 <body id="index" class="index hide-left-column hide-right-column lang_en">
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	
		<div id="loginViewID" style="display: none;">
			<g:render template="/home/loginView" />
		</div>
	<div id="homeViewId">
	<div class="pos-slideshow-container" >
        <div class="flexslider ma-nivoslider">
            <div class="pos-loading"></div>
                <div id="pos-slideshow-home" class="slides">
                     <img style ="display:none" src="/images/banner/04.jpg" data-thumb="/images/banner/04.jpg" alt="" title="">
                      <img style ="display:none" src="/images/banner/03.jpg" data-thumb="/images/banner/03.jpg" alt="" title="">
                      <img style ="display:none" src="/images/banner/01.jpg" data-thumb="/images/banner/01.jpg" alt="" title="">
             	</div>
        	</div>
    	</div>
		<div class="columns-container">
			<div id="columns" class="container">
				<div class="row">
					<div id="center_column" class="center_column  col-sm-12">
		           		<ul id="home-page-tabs" class="nav nav-tabs clearfix">
							<li class="active"><a data-toggle="tab" href="#" class="blocknewproducts">New products</a></li>
							<li><a data-toggle="tab" href="" class="blockbestsellers">Best Sellers</a></li>
						</ul>
				<div class="tab-content">
					<!-- Products list -->
					<ul id="blocknewproducts" class="product_list grid row blocknewproducts tab-pane active">
						<g:each var="item" in="${itemList}">
						<li class="ajax_block_product  col-sm-4 col-md-3">
							<div class="product-container">
                                <div class="left-block">
                                    <div class="product-image-container">
                                        <a class="product_img_link"  title="Sed posuere">
                                            <img class="replace-2x img-responsive" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.images[0].name}"]"/>" alt="${item.itemName}" title="${item.itemName}" width="270" height="270" itemprop="image">
                                        </a>

                                       <a class="quick-view various" alt="${item.itemName}" width="270" height="270" href="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.images[0].name}"]"/>"><span>Quick view</span></a>
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
                                            <a class="product-name" href="" title="${item.itemName}" >${item.itemName}</a>
                                        </h5>
                                          <p class="product-desc">
                                          ${item.itemDescription}
                                          </p>
                                            <div class="content_price">
                                                <span class="price product-price">&#8377;${item.itemPrice}</span>
                                            </div>
                                            <div class="button-container">
                                                <div class="actions">                                  				 											
                                                    <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart" data-id-product="13"><span>Add to cart</span></a>                                            
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
	
    		<div class="clearfix">
            	<div class="pos-feature-product">
					<div class="pos-feature-product-title"><h2>Featured Products</h2> </div>
                            <ul class="bxslider">
                                <li class=" feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="/images/t1-01.jpg" alt="Sports Shoes" title="Sports Shoes" width="220" height="220" >
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="/images/t1-01.jpg" rel="gallery1" title="Sports Shoes"><span>Quick view</span></a>                                                                                    
                                         </div>
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
                                              <a class="product-name" href="#" title="Printed Chiffon Dress">Sports Shoes</a>
                                			</h5>                              
                                         	<div class="content_price">
                                                <span class="price product-price">$160.40</span>
                                                 <span class="old-price product-price">$200.50</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <a class="button ajax_add_to_cart_button btn btn-default" href="#" rel="nofollow" title="Add to cart"><span>Add to cart</span>
                                                 </a>                                        
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_7" href="#" rel="7" >
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                    <a class="button lnk_view btn btn-default" href="#" title="View">
                                                        <span>More</span>
                                                    </a>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                                <li class=" feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="/images/product/product2.jpg" alt="Red Belly" title="Red Belly" width="220" height="220">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="/images/product/product2.jpg" rel="gallery1" title="Red Belly">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
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
                                              <a class="product-name" href="#" title="Printed Chiffon Dress">Red Belly</a>
                                			</h5>                              
                                         	<div class="content_price">
                                                <span class="price product-price">$160.40</span>
                                                 <span class="old-price product-price">$200.50</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <a class="button ajax_add_to_cart_button btn btn-default" href="#" rel="nofollow" title="Add to cart"><span>Add to cart</span>
                                                 </a>                                        
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_7" href="#" rel="7" >
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                    <a class="button lnk_view btn btn-default" href="#" title="View">
                                                        <span>More</span>
                                                    </a>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                                <li class=" feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="/images/product/product8.jpg" alt="Dark Brown Shoes" title="Dark Brown Shoes" width="220" height="220">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span><span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="/images/product/product8.jpg" rel="gallery1" title="Dark Brown Shoes">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
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
                                              <a class="product-name" href="#" title="Printed Chiffon Dress">Dark Brown Shoes</a>
                                			</h5>                              
                                         	<div class="content_price">
                                                <span class="price product-price">$160.40</span>
                                                 <span class="old-price product-price">$200.50</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <a class="button ajax_add_to_cart_button btn btn-default" href="#" rel="nofollow" title="Add to cart"><span>Add to cart</span>
                                                 </a>                                        
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_7" href="#" rel="7" >
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                    <a class="button lnk_view btn btn-default" href="#" title="View">
                                                        <span>More</span>
                                                    </a>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                                <li class=" feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="/images/product/product9.jpg" alt="Light Grey Sport Shoes" title="Light Grey Sport Shoes" width="220" height="220">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span><span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="/images/product/product9.jpg" rel="gallery1" title="Light Grey Sport Shoes">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
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
                                              <a class="product-name" href="#" title="Printed Chiffon Dress">Light Grey Sport Shoes</a>
                                			</h5>                              
                                         	<div class="content_price">
                                                <span class="price product-price">$160.40</span>
                                                 <span class="old-price product-price">$200.50</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart"><span>Add to cart</span>
                                                 </a>                                        
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_7" href="#">
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                    <a  class="button lnk_view btn btn-default" href="#" title="View">
                                                        <span>More</span>
                                                    </a>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                                <li class="feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="/images/product/product5.jpg" alt="Brown Belly" title="Brown Belly" width="220" height="220">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span><span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="/images/product/product5.jpg" rel="gallery1" title="Brown Belly">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
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
                                              <a class="product-name" href="#" title="Printed Chiffon Dress">Brown Belly</a>
                                			</h5>                              
                                         	<div class="content_price">
                                                <span class="price product-price">$160.40</span>
                                                 <span class="old-price product-price">$200.50</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart"><span>Add to cart</span>
                                                 </a>                                        
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_7" href="#" >
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                    <a class="button lnk_view btn btn-default" href="#" title="View">
                                                        <span>More</span>
                                                    </a>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                            </ul>
                        	<div class="bx-controls bx-has-controls-direction">
                             	<div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div>
                            </div>
                    </div>
                </div>
            </div><!-- #center_column -->
        </div><!-- .row -->
    </div><!-- #columns -->
    </div><!-- .columns-container -->
			
            <!-- Footer -->
			<div class="pos-logo-container">	
                <div class="container">
                    <div class="pos-logo" id="wholesaler">
						<div class="pos-logo-title"><h2>Our Brands</h2></div>
                    		<ul class="bxslider">
                            	<li >
                                    <a href="#">
                                        <img src="/images/2(1).jpg" alt="Logo">
                                    </a>
								</li>
                                <li>
                                    <a href="#">
                                        <img src="/images/3(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/4.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/5.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/6.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/7.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/1(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/2(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/3(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/4.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/5.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/6.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/7.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/1(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/2(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/3(1).jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/4.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/5.jpg" alt="Logo">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/images/6.jpg" alt="Logo">
                                    </a>
                                </li>
                           </ul>
                     </div>
				</div>
			</div>
		</div>
	</div>
	</div>			  	  
			 
  
<!-- #page -->
<div id="addToCart" class="various" style="display: none;">
			<g:render template="/home/addToCartPopUp" />
		</div>
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
   
<script type="text/javascript">
$(document).ready(function() {
$('.ajax_add_to_cart_button').on('click', function(){
	$('#addToCart').show()
})
	
	$(".various").fancybox({
		maxWidth	: 900,
		maxHeight	: 800,
		fitToView	: false,
		width		: '100%',
		height		: '100%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none',
		helpers	: {
			title	: {
				type: 'float'
			}
		}
	});
<%--	$('#etalage').etalage({--%>
<%--				thumb_image_width: 300,--%>
<%--				thumb_image_height: 400,--%>
<%--				--%>
<%--				show_hint: true,--%>
<%----%>
<%--		});--%>
	});
	$('.control').click(function(){
		if($(this).hasClass('inactive')) {
			$(this).removeClass('inactive');
			$(this).addClass('active');
			$('.pos-demo-wrap').animate({left:'0'}, 500);
		} else {
			$(this).addClass('inactive');
			$('.pos-demo-wrap').animate({left:'-210px'}, 500);
		}
	});
registerValidation();
var registerUrl = "${createLink(controller:'Admin',action:'registerUser')}";

var CUSTOMMENU_POPUP_EFFECT = 0;
var CUSTOMMENU_POPUP_TOP_OFFSET = 40;
//]]>
$(window).load(function() {
	$("#loginViewID").hide();
        $('#pos-slideshow-home').nivoSlider({
			effect: 'random',
			slices: 15,
			boxCols: 8,
			boxRows: 4,
			animSpeed: '600',
			pauseTime: '5000',
			startSlide: 0,
			directionNav: false,
			controlNav: false,
			controlNavThumbs: false,
			pauseOnHover: true,
			manualAdvance: false,
			prevText: 'Prev',
			nextText: 'Next',
                        afterLoad: function(){
                         $('.pos-loading').css("display","none");
                        },     
                        beforeChange: function(){ 
                            $('.pos-slideshow-title, .pos-slideshow-des').css("left","-100%" );
                            $('.pos-slideshow-readmore').css("left","-100%"); 
                        }, 
                        afterChange: function(){ 
                            $('.pos-slideshow-title, .pos-slideshow-des, .pos-slideshow-readmore').css("left","100px") 
                        }
 		});
    });
$('.pos-feature-product .bxslider').bxSlider({
			auto: 0,
			infiniteLoop:false,
			slideWidth:275,
			slideMargin: 23,
			minSlides: 1,
			maxSlides: 4,
			speed:  3000,
			pause: 600,
			controls: 1,
			pager: false,
		});
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
jQuery(function( $ ){
		
				$.easing.elasout = function(x, t, b, c, d) {
					var s=1.70158;var p=0;var a=c;
					if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
					if (a < Math.abs(c)) { a=c; var s=p/4; }
					else var s = p/(2*Math.PI) * Math.asin (c/a);
					return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
				};
				
				
			
			// TOC, shows how to scroll the whole window
			$('#BrandsType a').click(function(){//$.scrollTo works EXACTLY the same way, but scrolls the whole screen
				$.scrollTo( this.hash, 1500, { easing:'elasout' });
				
			});
});
</script>
</body>
</html>
