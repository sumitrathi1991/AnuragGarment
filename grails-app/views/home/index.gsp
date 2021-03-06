<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.posthemes.com/pos_alexis/en/ -->
<html lang="en" class="">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name='layout' content='main' />
		
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes"> 
        <script>
        var addToCartUrl = "${createLink(controller:'cart',action:'addToCart')}";
        var showAddToCartpopupUrl = "${createLink(controller:'home',action:'showAddToCartPopup')}";
        </script>
        </head>
	 <body id="index" class="index hide-left-column hide-right-column lang_en">
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
							<li class="active"><g:remoteLink data-toggle="tab" class="blocknewproducts" action="getProductType" controller="home" params="[itemType:'new']" update="category" after="changeTab(this)">New products</g:remoteLink></li>
							<li><g:remoteLink data-toggle="tab"  class="blockbestsellers" action="getProductType" controller="home" params="[itemType:'bestSeller']" update="category" after="changeTab(this)">Best Sellers</g:remoteLink></li>
						</ul>
			<div id="category">
				<g:render template="items"></g:render>
			</div>					
    		<div class="clearfix">
            	<div class="pos-feature-product">
					<div class="pos-feature-product-title"><h2>Featured Products</h2> </div>
                            <ul class="bxslider">
                            <g:each in="${featuredItems}" var="featuredItem">
                                <li class=" feature-productslider-item ajax_block_product first_item">
                        			<div class="product-container">
                           				<div class="left-block">
                                            <div class="product-image-container">
                                                <a class="product_img_link" href="#" title="Printed Chiffon Dress">
                                                    <img class="replace-2x img-responsive" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${featuredItem.itemSize[0].itemColor[0].imageList[0].name}"]"/>" alt="${featuredItem.itemName}" title="${featuredItem.itemName}" width="220" height="220" >
                                                    <span class="sale-box"><span class="sale-label">Sale</span></span>														 										
                                                    <span class="new-box"><span class="new-label">New</span></span>												 										<span class="sale-box"><span class="sale-label">Sale</span></span>										
                                                </a>
                                              <a class="quick-view various" alt="${featuredItem.itemName}" width="270" height="270" href="<g:createLink action="renderImage" controller="image" params="[imageName : "${featuredItem.itemSize[0].itemColor[0].imageList[0].name}"]"/>">
                                              	<span>Quick view</span>
                                              </a> 
                                         </div>
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
                                            </div>
                                			--%><h5>
                                              <a class="product-name" href="#" title="${featuredItem.itemName}">${featuredItem.itemName}</a>
                                			</h5>
                                			<p> Brand : ${featuredItem.itemBrand}</p>
                                			<p>Size : ${featuredItem.itemSize[0].itemSizeValue}   | Color : ${featuredItem.itemSize[0].itemColor[0].itemColorValue }  </p>                              
                                         	<div class="content_price">
                                                <span class="price product-price">&#8377;${featuredItem.itemPrice}</span>
                                                 <span class="old-price product-price">&#8377;${featuredItem.itemPrice}</span>
											 </div>           
                                            <div class="button-container">
                                                <div class="actions">
                                                  <button class="button ajax_add_to_cart_button btn btn-default" productId="${featuredItem.id}" onclick="showAddToCartPopup(this)" title="Add to cart"><span>Add to cart</span>
                                                 </button>                                        
                                                    <div class="wishlist">
                                                        <g:link class="addToWishlist wishlistProd_13" action="productDetail" controller="home" params="[productId : "${featuredItem.id}"]" title="Product Detail">
                                                            View Details
                                                        </g:link>
                                                    </div>
                                                    <g:link action="showProducts" controller="home" params="[itemBrand:"${featuredItem.itemBrand}"]" itemprop="url" class="button lnk_view btn btn-default" href="#" title="More Products"><span>More Items</span></g:link>
                                                </div>
                                            </div>
                           				 </div>
                       				 </div>
                   				</li>
                   				</g:each>
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
	</div>			  	  
			 
  
<!-- Add To Cart Popup Template -->
	<div id="addToCart1">
		<g:render template="/home/addToCartPopUp" />
	</div>
<!-- /- Add To Cart Popup Template -/ --> 
   
<script type="text/javascript">
registerValidation();
var registerUrl = "${createLink(controller:'Admin',action:'registerUser')}";

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
    auto: true,
    slideWidth:200,
	slideMargin: 5,
	minSlides: 1,
	maxSlides: 6,
	speed:  4000,
	pause: 4000,
	controls: 1,
	autoHover: true,
    pager: false,
});

function changeTab(obj){
	$('#home-page-tabs li').removeClass('active')
	$(obj).parent().addClass('active')
}
</script>
</body>
</html>
