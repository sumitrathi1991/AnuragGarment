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
							<li class="active"><g:remoteLink data-toggle="tab" class="blocknewproducts" action="getCategoryProduct" controller="home" params="[itemCategory:'new']" update="category">New products</g:remoteLink></li>
							<li><g:remoteLink data-toggle="tab"  class="blockbestsellers" action="getCategoryProduct" controller="home" params="[itemCategory:'bestSeller']" update="category">Best Sellers</g:remoteLink></li>
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
                                                  <button class="button ajax_add_to_cart_button btn btn-default" productId="${featuredItem.id}" onclick="showAddToCartPopup()" title="Add to cart"><span>Add to cart</span>
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
$('#addToCart').on('click', function(){
	var itemId = $(this).attr('itemId');
	var quantity = $('#quantity').val();
	var	quantityValid = isNaN(quantity);
	if(quantity == ''  || quantityValid || quantity < 1){
		$('#noQuantity').show().delay(1000).fadeOut()
		return false;
	}
	else{
	var itemSize = $('.itemSize').html();
	var itemColor = $('.itemColor').html()
	var price = $('#our_price_display').text().slice(1)
	var addToCartUrl = "${createLink(controller:'cart',action:'addToCart')}";
				jQuery.ajax({
					type : 'POST',
					url : addToCartUrl,
					async : false,
					data : 'quantity='+quantity+'&item='+itemId+'&price='+price+'&itemSize='+itemSize+'&itemColor='+itemColor,
					success : function(data) {
						if(data.result == false){
							$('#errorMessage').html(data.message);
							$('#errorMessage').show().delay(2000).fadeOut();
							return false;
							}
						else{
							$.fancybox({
						        href: '#layer_cart', 
						        maxWidth	: 900,
								fitToView	: false,
								width		: '100%',
								autoSize	: false,
								closeClick	: false,
								openEffect	: 'fade',
								closeEffect	: 'fade',
								helpers	: {
									title	: {
										type: 'float'
									}
								}
						    });
						
						    $('#cartData').html('')
						    for(var i =0 ; i < data.length; i++){
									$('#cartData').append('<div class="col-xs-12 col-md-12 product_row clearfix"><div class="col-xs-6 col-md-6"><div class="product-image-container layer_cart_img"><img class="layer_cart_img img-responsive" src='+data[i].image+' width="70px" alt="Sed posuere" title="Sed posuere"></div>'+
									'<div class="layer_cart_product_info"><span id="layer_cart_product_title" class="product-name">'+data[i].name+'<a href="javascript:void(0)" cartLineId='+data[i].cartLineId+' cartId='+data[i].cartId+' class="icon-remove-sign remove_cart_product"></a></span><ul><li><strong class="dark">Color:</strong><span id="layer_cart_product_price">'+data[i].color+'</span><span class="divider">|</span></li><li><strong class="dark">Size:</strong><span id="layer_cart_product_price">'+data[i].size+'</span></li></ul></div></div>'+
									'<div class="col-xs-2 col-md-2 text-center"><span class="layer_cart_product_price">'+data[i].price+'</span></div>'+
									'<div class="col-xs-2 col-md-2 cart_quantity text-center"><input size="2" type="text" class="cart_quantity_input form-control grey" value="1"><div class="cart_quantity_button clearfix"><a class="cart_quantity_down btn btn-default button-minus" href="#" title="Subtract"><span><i class="icon-minus"></i></span></a><a class="cart_quantity_up btn btn-default button-plus" href="#" title="Add"><span><i class="icon-plus"></i></span></a></div></div><div class="col-xs-2 col-md-2 text-center"><span class="layer_cart_product_price">'+data[i].total+'</span></div></div></div>')				
							 }
							 $('.total').html(data[0].grandTotal);
						    	///removeCartLine();
								
							}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
					}
				});
	}
	});		

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

$(window).load(function() {
	$("#loginViewID").hide();
        
    });

jQuery(function( $ ){
		
				
});
</script>
</body>
</html>
