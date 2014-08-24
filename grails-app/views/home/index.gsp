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
							<div class="product-container" itemscope="" itemtype="">
                                <div class="left-block">
                                    <div class="product-image-container">
                                        <a class="product_img_link"  title="Sed posuere" itemprop="url">
                                            <img class="replace-2x img-responsive" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.images[0].name}"]"/>" alt="${item.itemName}" title="${item.itemName}" width="270" height="270" itemprop="image">
                                        </a>

                                       <g:link class="quick-view" action="productDetail" controller="home" params="[productId : "${item.id}"]"><span>Quick view</span></g:link>
										<span class="new-box"><span class="new-label">New</span></span>																										 									</div>
                                </div>
								
                                <div class="right-block">
									<div class="comments_note" itemprop="aggregateRating">	
                                        <div class="star_content clearfix">
											<div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star"></div>
                                              <div class="star"></div>
                                        </div>
									</div>
                                        <h5 itemprop="name">
                                            <a class="product-name" href="" title="${item.itemName}" >${item.itemName}</a>
                                        </h5>
                                          <p class="product-desc" itemprop="description">
                                          ${item.itemDescription}
                                          </p>
                                            <div class="content_price">
                                                <span itemprop="price" class="price product-price">&#8377;${item.itemPrice}</span>
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
							<div class="product-container" itemscope="" itemtype="">
                                <div class="left-block">
                                    <div class="product-image-container">
                                        <%--<a class="product_img_link" href="" title="Sed posuere" itemprop="url">
                                            <img class="replace-2x img-responsive" src="/images/sed-posuere.jpg" alt="Sed posuere" title="Sed posuere" width="270" height="270" itemprop="image">
                                        </a>
                                       --%><a class="quick-view" href="" rel=""><span>Quick view</span></a>
										<span class="new-box"><span class="new-label">New</span></span>																										 									</div>
                                </div>
								
                                <div class="right-block">
									<div class="comments_note" itemprop="aggregateRating">	
                                        <div class="star_content clearfix">
											<div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star star_on"></div>
                                              <div class="star"></div>
                                              <div class="star"></div>
                                        </div>
									</div>
                                        <h5 itemprop="name">
                                            <a class="product-name" href="#" title="Sed posuere" >Sed posuere</a>
                                        </h5>
                                          <p class="product-desc" itemprop="description">
                                              Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti...
                                          </p>
                                            <div class="content_price">
                                                <span itemprop="price" class="price product-price">$350.00</span>
                                            </div>
                                            <div class="button-container">
                                                <div class="actions">                                  				 											
                                                    <a class="button ajax_add_to_cart_button btn btn-default" href="#"  title="Add to cart" data-id-product="13"><span>Add to cart</span></a>                                            
                                                    <div class="wishlist">
                                                        <a class="addToWishlist wishlistProd_13" href="#" rel="13">
                                                            Add to Wishlist
                                                        </a>
                                                    </div>
                                                     <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View"><span>More</span></a>
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
                                                    <img class="replace-2x img-responsive" src="/images/t1-01.jpg" alt="Sports Shoes" title="Sports Shoes" width="270" height="270" itemprop="image">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" href="#product_preview" rel="#"><span>Quick view</span></a>                                                                                    
                                         </div>
                           			 	</div>
                            			<div class="right-block">
                                            <div class="comments_note" itemprop="aggregateRating" itemscope="" itemtype="#">	
                                                <div class="star_content clearfix">
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star"></div>
                                                    <div class="star"></div>
                                                </div>
                                            </div>
                                			<h5 itemprop="name">
                                              <a class="product-name" href="#" title="Printed Chiffon Dress" itemprop="">Sports Shoes</a>
                                			</h5>                              
                                         	<div itemprop="offers" itemscope="" itemtype="" class="content_price">
                                                <span itemprop="price" class="price product-price">$160.40</span>
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
                                                    <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View">
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
                                                    <img class="replace-2x img-responsive" src="/images/product/product2.jpg" alt="Red Belly" title="Red Belly" width="270" height="270" itemprop="image">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view" href="#" rel="#">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
                           			 	</div>
                            			<div class="right-block">
                                            <div class="comments_note" itemprop="aggregateRating" itemscope="" itemtype="#">	
                                                <div class="star_content clearfix">
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star"></div>
                                                    <div class="star"></div>
                                                </div>
                                            </div>
                                			<h5 itemprop="name">
                                              <a class="product-name" href="#" title="Printed Chiffon Dress" itemprop="url">Red Belly</a>
                                			</h5>                              
                                         	<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer" class="content_price">
                                                <span itemprop="price" class="price product-price">$160.40</span>
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
                                                    <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View">
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
                                                    <img class="replace-2x img-responsive" src="/images/product/product8.jpg" alt="Dark Brown Shoes" title="Dark Brown Shoes" width="270" height="270" itemprop="image">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view" href="#" rel="#">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
                           			 	</div>
                            			<div class="right-block">
                                            <div class="comments_note" itemprop="aggregateRating" itemscope="" itemtype="#">	
                                                <div class="star_content clearfix">
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star"></div>
                                                    <div class="star"></div>
                                                </div>
                                            </div>
                                			<h5 itemprop="name">
                                              <a class="product-name" href="#" title="Printed Chiffon Dress" itemprop="url">Dark Brown Shoes</a>
                                			</h5>                              
                                         	<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer" class="content_price">
                                                <span itemprop="price" class="price product-price">$160.40</span>
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
                                                    <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View">
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
                                                    <img class="replace-2x img-responsive" src="/images/product/product9.jpg" alt="Light Grey Sport Shoes" title="Light Grey Sport Shoes" width="270" height="270" itemprop="image">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view" href="#" rel="#">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
                           			 	</div>
                            			<div class="right-block">
                                            <div class="comments_note" itemprop="aggregateRating" itemscope="" itemtype="#">	
                                                <div class="star_content clearfix">
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star"></div>
                                                    <div class="star"></div>
                                                </div>
                                            </div>
                                			<h5 itemprop="name">
                                              <a class="product-name" href="#" title="Printed Chiffon Dress" itemprop="url">Light Grey Sport Shoes</a>
                                			</h5>                              
                                         	<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer" class="content_price">
                                                <span itemprop="price" class="price product-price">$160.40</span>
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
                                                    <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View">
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
                                                    <img class="replace-2x img-responsive" src="/images/product/product5.jpg" alt="Brown Belly" title="Brown Belly" width="270" height="270" itemprop="image">
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										<span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view" href="#" rel="#">
                                                <span>Quick view</span>
                                            </a>                                                                                    
                                         </div>
                           			 	</div>
                            			<div class="right-block">
                                            <div class="comments_note" itemprop="aggregateRating" itemscope="" itemtype="#">	
                                                <div class="star_content clearfix">
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star star_on"></div>
                                                    <div class="star"></div>
                                                    <div class="star"></div>
                                                </div>
                                            </div>
                                			<h5 itemprop="name">
                                              <a class="product-name" href="#" title="Printed Chiffon Dress" itemprop="url">Brown Belly</a>
                                			</h5>                              
                                         	<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer" class="content_price">
                                                <span itemprop="price" class="price product-price">$160.40</span>
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
                                                    <a itemprop="url" class="button lnk_view btn btn-default" href="#" title="View">
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

 <!-- Product PopUp -->
<div id="product_preview" style="display:none;">
	<div class="primary_block row">
		<!-- left infos-->  
		<div class="pb-left-column col-sm-5 col-md-5">
			<ul id="etalage">
                  <li>
                      <a href="">
                          <img class="etalage_thumb_image" src="images/t1.jpg" />
                          <img class="etalage_source_image" src="images/t2.jpg" />
                      </a>
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t2.jpg" />
                      <img class="etalage_source_image" src="images/t2.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t3.jpg" />
                      <img class="etalage_source_image" src="images/t3.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t4.jpg" />
                      <img class="etalage_source_image" src="images/t4.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t5.jpg" />
                      <img class="etalage_source_image" src="images/t5.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t6.jpg" />
                      <img class="etalage_source_image" src="images/t6.jpg" />
                  </li>
                  <li>
                      <img class="etalage_thumb_image" src="images/t1.jpg" />
                      <img class="etalage_source_image" src="images/t1.jpg" />
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
										<p id="quantity_wanted_p">
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
   
<script type="text/javascript">
$(document).ready(function() {
	
	$(".various").fancybox({
		maxWidth	: 900,
		maxHeight	: 800,
		fitToView	: false,
		width		: '100%',
		height		: '100%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
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
function loginView(){
	$("#loginViewID").show();
	$("#homeViewId").hide();
}
function homeView(){
	$("#loginViewID").hide();
	//$("#homeViewId").show();
}

</script>
</body>
</html>
