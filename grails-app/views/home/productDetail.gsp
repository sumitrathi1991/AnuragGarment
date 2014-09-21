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

<div id="homeViewId">
	<div class="columns-container">
		<div id="columns" class="container">					
                    <!-- Breadcrumb -->
                    <div class="breadcrumb clearfix">
                        <a class="home" href="javascript:void(0)" title="Return to Home">Home</a>
                        <span class="navigation-pipe">&gt;</span>
                       	<a href="javascript:void(0)" title="Women">Men</a>
                        <span class="navigation-pipe">&gt;</span>Shoes
                     </div>
                    <!-- /Breadcrumb -->
					<div class="row">
                    	<div id="left_column" class="column col-sm-3">
                       	 	<div class="pos-special-product">
								<div class="pos-special-product-title">
                                	<h2 class="title_block"><span>Special Product</span></h2>
                                 </div>
								<div class="bx-wrapper">
        							<div class="bx-viewport">
                                    	<ul class="bxslider">
                                        	<li class="ajax_block_product last_item alternate_item clearfix bx-clone">
												<div class="item-inner">
                                            		<a href="javascript:void(0)" class="product_img_link" title="Puma Sport Shoes">
                                                    	<img src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemColor[0].imageList[0].name}"]"/>" width="250" height="250" alt="Puma Sport Shoes">
                                           			 </a>
					      
                                            		<h3>
                                                    <a class="product-name" href="javascript:void(0)" title="Printed Chiffon Dress">${item.itemName}</a>		 													</h3>
													<div class="content_price">
                                                    	<span class="special-price">&#8377;${item.itemSize[0].itemPrice}</span>
                                                    	<%--<span class="old-price">$200.50</span>--%>
                                           			 </div>
                                               	</div>
                            				</li>
										</ul>
                            	</div>
                            </div>
						</div>
					</div>
					
                    <div id="center_column" class="center_column  col-sm-9">
						<div class="primary_block row">
                        <div class="container">
                            <div class="top-hr"></div>
                        </div>
						<!-- left infos-->  
						<div class="pb-left-column col-sm-5 col-md-5">
							<!-- start product_slider -->
				     		<ul id="etalage">
				     		<g:each var="itemImage" in="${item.itemColor[0].imageList}">
                                <li>
                                    <img class="etalage_source_image" src="<g:createLink action="renderImage" controller="image" params="[imageName : "${itemImage.name}"]"/>" />
                                </li>
                                </g:each>
				     		</ul>
						<!-- end product_slider -->
						<!-- usefull links-->
				<ul id="usefull_link_block" class="clearfix no-print">
					
                    <li class="sendtofriend">
                        <a id="send_friend_button" href="#send_friend_form" style="display: none;">Send to a friend</a>
                    </li>
    
                    <div style="display: none;">
        				<div id="send_friend_form">
                		<h2 class="title">Send to a friend</h2>
                        <div class="product clearfix">
                            <img src="<g:createLink action="renderImage" controller="image" params="[imageName : "${item.itemColor[0].imageList[0].name}"]"/>" height="270" width="270" alt="Shoes">
                            <div class="product_desc">
                                <p class="product_name"><strong>Shoes</strong></p>
                                <p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>
                            </div>
                        </div>
                
                        <div class="send_friend_form_content" id="send_friend_form_content">
                            <div id="send_friend_form_error"></div>
                            <div id="send_friend_form_success"></div>
                                <div class="form_container">
                                    <p class="intro_form">Recipient :</p>
                                    <p class="text">
                                        <label for="friend_name">Name of your friend <sup class="required">*</sup> :</label>
                                        <input id="friend_name" name="friend_name" type="text" value="">
                                    </p>
                                    <p class="text">
                                        <label for="friend_email">E-mail address of your friend <sup class="required">*</sup> :</label>
                                        <input id="friend_email" name="friend_email" type="text" value="">
                                    </p>
                                    <p class="txt_required"><sup class="required">*</sup> Required fields</p>
                                </div>
                                <p class="submit">
                                    <a href="javascript:void(0)" onclick="$.fancybox.close();">Cancel</a>&nbsp;or&nbsp;
                                    <input id="sendEmail" class="button" name="sendEmail" type="submit" value="Send">
                                </p>
                        </div>
       		 		  </div>
    				</div>
                    <li class="print">
                        <a href="javascript:print();" style="display: none;">Print</a>
                    </li>
				</ul>
			</div> <!-- end pb-left-column -->
		<!-- end left infos--> 
		<!-- center infos -->
		<div class="pb-center-column col-sm-7 col-md-7">
			<h1>${item.itemName}</h1>
                <div class="price">
                    <p class="our_price_display" >
						 <span id="our_price_display">&#8377;${item.itemSize[0].itemPrice}</span>
                     </p>             
					<p id="old_price">
						<span id="old_price_display"></span>
					 </p>
                </div>
                <p> Size : <span class="itemSize">${item.itemSize[0].label}</span> | Color : <span class="itemColor">${item.itemColor[0].label}</span></p>
				<div id="product_comments_block_extra" class="no-print" style="display: none;">
                    <div class="comments_note clearfix">
                        <span>Rating&nbsp;</span>
                        <div class="star_content clearfix">
                            <div class="star star_on"></div>
                              <div class="star star_on"></div>
                              <div class="star star_on"></div>
                              <div class="star"></div>
                              <div class="star"></div>
                              <span class="hidden" itemprop="ratingValue">3</span> 
                        </div>
                	</div> <!-- .comments_note -->
	
                    <ul class="comments_advices">
                    	<li>
                        	<a href="#idTab5" class="reviews">
                            	<span class="read"> Read reviews</span>
                                </a>
                         </li>
                          <li>
                              <a class="open-comment-form" href="#new_comment_form">
                                  <span>Write a review</span>
                              </a>
                          </li>
                    </ul>
 				</div>		 

				<!--  /Module ProductComments -->			
                <p id="product_reference">
                    <label>Brand </label>
                    <span class="editable brand">${item.itemBrand}</span>
				</p>
				<p id="product_condition">
                    <label>Quantity </label>
                    <input type="text" id="quantity"/>
				</p>
				<div id="noQuantity" style="display:none;">Please enter valid quantity first.</div>
                  <div id="short_description_block">
                      <div id="short_description_content" class="rte align_justify description"><p>${item.itemDescription}</p></div>
          			<p class="buttons_bottom_block">
                  		<a href="javascript:{}" class="button"> More details</a>
             		</p>
                  <!---->
             	 </div> <!-- end short_description_block -->
				<!-- number of item in stock -->
				<p id="pQuantityAvailable">
					<span id="quantityAvailable">${item.itemSize[0].quantity}</span>
					<span style="display: none;" id="quantityAvailableTxt">Item</span>
					<span id="quantityAvailableTxtMultiple">Items</span>
				</p>
				<!-- availability -->
				<p id="availability_statut">
					<span id="availability_value">In stock</span>				
				</p>
				
				<button id="addToCart" itemId="${productId}">Add To Cart</button>
				<div id="errorMessage" style="display: none;"></div>
				<p class="warning_inline" id="last_quantities" style="display: none">Warning: Last items in stock!</p>
				<p id="availability_date" style="display: none;">
				<span id="availability_date_label">Availability date:</span>
				<span id="availability_date_value"></span>
			</p>
			<!-- Out of stock hook -->
			<div id="oosHook" style="display: none;"></div>
			<!-- add to cart form-->
			
			</div> <!-- end pb-right-column-->
		</div> <!-- end primary_block -->
                
        <ul id="more_info_tabs" class="idTabs idTabsShort clearfix" style="display: none;">
            <li><a id="more_info_tab_more_info" href="#idTab1" class="selected"><span>More info</span></a></li>		
            <li><a id="more_info_tab_data_sheet" href="#idTab2">Data sheet</a></li>								
            <li><a href="#idTab5" class="idTabHrefShort">Reviews</a></li>
        </ul>
			<!-- Data sheet -->
			<section id="idTab2" class="page-product-box block_hidden_only_for_screen">				
				<table class="table-data-sheet">			
					<tbody>
                    	<tr class="odd">		    
                            <td>Compositions</td>
                            <td>Cotton</td>
                        </tr>
						<tr class="even">	    
                            <td>Styles</td>
                            <td>Casual</td>	
                        </tr>
                        <tr class="odd">	    
                            <td>Properties</td>
                            <td>Short Sleeve</td>
                        </tr>
					</tbody>
                 </table>
			</section>
			<!--end Data sheet -->
				<!-- More info -->
                <section id="idTab1" class="page-product-box" style="display: none;">
                    <!-- full description -->
                    <div class="rte">
                        <p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis.</p>
                    </div>
                </section>
				<!--end  More info -->
				<!--HOOK_PRODUCT_TAB -->
				<div id="idTab5" class="page-product-box block_hidden_only_for_screen">
				<div id="idTab5">
                    <div id="product_comments_block_tab">
                        <div class="comment row">
                            <div class="comment_author col-sm-2">
                                <span>Grade&nbsp;</span>
                                <div class="star_content clearfix">
                                    <div class="star star_on"></div>
                                    <div class="star star_on"></div>
                                    <div class="star star_on"></div>
                                    <div class="star"></div>
                                    <div class="star"></div>
                                </div>
                                <div class="comment_author_infos">
                                    <strong>malesuada</strong>
                                    <em>04/28/2014</em>
                                </div>
                            </div> <!-- .comment_author -->
                            
                            <div class="comment_details col-sm-10">
                                <p class="title_block">
                                    <strong> cubilia Curae</strong>
                                </p>
                                <p>m, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet c</p>
                            </div><!-- .comment_details -->
                        </div> <!-- .comment -->
                        <p class="align_center">
                            <a id="new_comment_tab_btn" class="btn btn-default button button-small open-comment-form" href="#new_comment_form">
                                <span>Write your review !</span>
                            </a>
                        </p>	
                </div> <!-- #product_comments_block_tab -->
			</div>

			<!-- Fancybox -->
            <div style="display: none;">
                <div id="new_comment_form">
                    <form id="id_new_comment_form" action="">
                        <h2 class="page-subheading">
                            Write a review
                        </h2>
                        <div class="row">
							<div class="product clearfix  col-xs-12 col-sm-6">
                                    <img src="../images/t1.jpg" height="125" width="125" alt="Blouse">
                                    <div class="product_desc">
                                        <p class="product_name">
                                            <strong>Blouse</strong>
                                        </p>
                                        <p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>
                                    </div>
                                </div>
							 <div class="new_comment_form_content col-xs-12 col-sm-6">
                                <h2>Write a review</h2>
                                    <ul id="criterions_list">
										<li>
                                            <label>Quality:</label>
                                            <div class="star_content">
                                                <div class="cancel"><a title="Cancel Rating"></a></div><div class="star star_on"><a title="1">1</a></div>
                                                <div class="star star_on"><a title="2">2</a></div>
                                                <div class="star star_on"><a title="3">3</a></div>
                                                <div class="star"><a title="4">4</a></div>
                                                <div class="star"><a title="5">5</a></div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
									 </ul>
                                    <label for="comment_title">
                                        Title: <sup class="required">*</sup>
                                    </label>
                                	<input id="comment_title" name="title" type="text" value="">
                                    <label for="content">
                                        Comment: <sup class="required">*</sup>
                                    </label>
                               			<textarea id="content" name="content"></textarea>
									<label>
                                        Your name: <sup class="required">*</sup>
                                    </label>
                                    <input id="commentCustomerName" name="customer_name" type="text" value="">
									<div id="new_comment_form_footer">
                                    <input id="id_product_comment_send" name="id_product" type="hidden" value="2">
                                    <p class="fl required"><sup>*</sup> Required fields</p>
                                    <p class="fr">
                                        <button id="submitNewMessage" name="submitMessage" type="submit" class="btn button button-small">
                                            <span>Send</span>
                                        </button>&nbsp;
                                        or&nbsp;
                                        <a class="closefb" href="javascript:void(0)">
                                            Cancel
                                        </a>
                                    </p>
                                    <div class="clearfix"></div>
                                </div> <!-- #new_comment_form_footer -->
                            </div>
                        </div>
                    </form><!-- /end new_comment_form_content -->
                </div>
            </div>
            <!-- End fancybox -->
		</div>
		<!--end HOOK_PRODUCT_TAB -->
		
		<div id="addToCart1">
			<g:render template="/home/addToCartPopUp" />
		</div>
					
		<!-- description & features -->
					</div><!-- #center_column -->
				</div><!-- .row -->
			</div><!-- #columns -->
			</div><!-- .columns-container -->
			
            <!-- Footer -->
		</div>
<!-- #page -->
<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.easing.js"></script>

<script type="text/javascript" src="../js/10-bootstrap.min.js"></script>
<script type="text/javascript" src="../js/15-jquery.uniform-modified.js"></script>
<script type="text/javascript" src="../js/jquery.fancybox.js"></script>
<script type="text/javascript" src="../js/jquery.idTabs.js"></script>
<script type="text/javascript" src="../js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="../js/jquery.bxslider.js"></script>
<script type="text/javascript" src="../js/product.js"></script>
<script type="text/javascript" src="../js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="../js/blocksearch.js"></script>
<script type="text/javascript" src="../js/jquery.rating.pack.js"></script>
<script type="text/javascript" src="../js/ph_simpleblog.js"></script>
<script type="text/javascript" src="../js/productscategory.js"></script>
<script type="text/javascript" src="../js/pos.bxslider.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/category.js"></script>
<script type="text/javascript" src="../js/pos.bxslider.min.js"></script>
<script type="text/javascript" src="../js/custommenu.js"></script>
<script type="text/javascript" src="../js/mobile_menu.js"></script>
<script type="text/javascript" src="../js/jquery.textareaCounter.plugin.js"></script>
<script type="text/javascript" src="../js/productcomments.js"></script>
<script type="text/javascript" src="../js/jquery.etalage.min.js"></script>	
<script type="text/javascript">
$("#more_info_tabs").idTabs(); 				
	$('#etalage').etalage({
		thumb_image_width: 300,
		thumb_image_height: 400,
								
		show_hint: true,
		click_callback: function(image_anchor, instance_id){
			alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
		}
});

function removeCartLine(){
	$('.remove_cart_product').on('click', function(){
	    var cartLineId = $(this).attr('cartLineId')
	    var cartId = $(this).attr('cartId')
	    var obj = $(this).parents('.product_row')
	    jQuery.ajax({
				type : 'POST',
				url : '/cart/updateCart',
				async : false,
				data : 'cartLine='+cartLineId+'&cart='+cartId,
				success : function(data) {
					$(obj).fadeOut();
					$('.total').html(data.total)
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				}
			});
	});
}
				
$('#addToCart').on('click', function(){
var itemId = $(this).attr('itemId');
var quantity = $('#quantity').val();
var	quantityValid = isNaN(quantity);
if(quantity == ''  || quantityValid || quantity < 1){
	$('#noQuantity').show().delay(1000).fadeOut()
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
				
			    $('#etalage').etalage({
			    	thumb_image_width: 300,
			    	thumb_image_height: 400,
			    	show_hint: true,

			    });
			    $('#cartData').html('')
			    for(var i =0 ; i < data.length; i++){
						$('#cartData').append('<div class="col-xs-12 col-md-12 product_row clearfix"><div class="col-xs-6 col-md-6"><div class="product-image-container layer_cart_img"><img class="layer_cart_img img-responsive" src='+data[i].image+' width="70px" alt="Sed posuere" title="Sed posuere"></div>'+
						'<div class="layer_cart_product_info"><span id="layer_cart_product_title" class="product-name">'+data[i].name+'<a href="javascript:void(0)" cartLineId='+data[i].cartLineId+' cartId='+data[i].cartId+' class="icon-remove-sign remove_cart_product"></a></span><ul><li><strong class="dark">Quantity:</strong><span id="layer_cart_product_quantity">'+data[i].quantity+'</span>'+
						'<span class="divider">|</span></li><li><strong class="dark">Color:</strong><span id="layer_cart_product_price">'+data[i].color+'</span><span class="divider">|</span></li><li><strong class="dark">Size:</strong><span id="layer_cart_product_price">'+data[i].size+'</span></li></ul></div></div>'+
						'<div class="col-xs-3 col-md-3 text-center"><span class="layer_cart_product_price">'+data[i].price+'</span></div><div class="col-xs-3 col-md-3 text-center"><span class="layer_cart_product_price">'+data[i].price+'</span></div></div></div>')				
				 }
				 $('.total').html(data[0].grandTotal)
			    removeCartLine();
					if(data.result == false){
						$('#errorMessage').html(data.message);
						$('#errorMessage').show().delay(2000).fadeOut();
						}
					else{
						$('#layer_cart').show();
				}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
				}
			});
}
})		
</script>
</body>
</html>