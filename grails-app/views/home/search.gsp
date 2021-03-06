<!DOCTYPE html>
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name='layout' content='main' />
		<meta name="description" content="Shop powered by PrestaShop">
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes">
		<script type="text/javascript">
		var addToCartUrl = "${createLink(controller:'cart',action:'addToCart')}";
		var showAddToCartpopupUrl = "${createLink(controller:'home',action:'showAddToCartPopup')}";
		</script> 
       <head>
			<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
        </head>
	 <body id="index" class="index hide-left-column hide-right-column lang_en">
	
<div id="homeViewId">
	<div class="columns-container">
		<div id="columns" class="container">
											
                <!-- Breadcrumb -->
                <div class="breadcrumb clearfix">
                    <a class="home" href="#" title="Return to Home">Home</a>
                    <span class="navigation-pipe">&gt;</span>
					<span class="navigation_page">Shoes</span>
                </div>
                <!-- /Breadcrumb -->
				<div class="row">
					<div id="left_column" class="column col-sm-3"><!-- Block categories module -->

                <!-- Block layered navigation module -->
                
                <!-- Block layered navigation module -->
				<div id="layered_block_left" class="block">
					<h2 class="title_block"><span>Shop By</span></h2>
						<div class="block_content">
						<form action="#" id="layered_form">
							<div>
								<div class="layered_filter clearfix">
						            <div class="layered_subtitle_heading">
                           				 <span class="layered_subtitle">Brand</span>
									</div>
                                        <ul class="col-lg-12 layered_filter_ul brands">																																						 											
                                          <g:each in="${brandList}" var="brand">
                                           <li class="nomargin hiddable col-lg-6">
                                                <input type="checkbox" class="checkbox" name="brand" id="" value="${brand}">
                                                <label for="brand"><a href="#" rel="nofollow">${brand}</a></label>
                                           </li>
                                          </g:each>
                                        </ul>
								</div>
                                <div class="layered_filter clearfix">
									 <div class="layered_subtitle_heading">
                           				 <span class="layered_subtitle">Price</span>
									</div>
										<ul class="col-lg-12 layered_filter_ul itemPrice">																																 											
												<li class="nomargin hiddable col-lg-6">
													<input type="checkbox" class="checkbox" name="price" id="layered_id_feature_5" value="500">
	                                                <label for="price"><a href="#">&#8377;500.00 and Under<span></span></a></label>
												</li>
												<li class="nomargin hiddable col-lg-6">
                                                    <input type="checkbox" class="checkbox" name="price" id="layered_id_feature_1" value="800">
													<label for="price"><a href="#">&#8377;800.00 and Under</a></label>
												</li>
												<li class="nomargin hiddable col-lg-6">
													<input type="checkbox" class="checkbox" name="price" id="layered_id_feature_3" value="1000">                                                   
													<label for="price"><a href="#">&#8377;1000.00 and Under</a></label>
												</li>
                                            	<li class="nomargin hiddable col-lg-6">
													<input type="checkbox" class="checkbox" name="price" id="layered_id_feature_3" value="1500">
													<label for="price"><a href="#">&#8377;1500.00 and Under</a></label>
												</li>
	                                            <li class="nomargin hiddable col-lg-6">
													<input type="checkbox" class="checkbox" name="price" id="layered_id_feature_3" value="2000">
													<label for="price"><a href="#">&#8377;2000.00 and Under</a></label>
												</li>
											</ul>
							</div>
                                <div class="layered_filter clearfix">
                                    <div class="layered_subtitle_heading">
                                        <span class="layered_subtitle">Color</span>
                                    </div>
										<ul class="col-lg-12 layered_filter_ul productColor">
										<g:each in="${colorList}" var="color">
										<g:each in="${color}" var="itemColor">
										<li class="nomargin hiddable col-lg-6">
												<input type="checkbox" class="checkbox" name="color" id="" value="${itemColor[0]}">
                                                <label for="color"><a href="#">${itemColor[0]}</a></label>
										</li>
										</g:each>
										</g:each>
										</ul>
								</div>
								
								<div class="layered_filter clearfix">
                                    <div class="layered_subtitle_heading">
                                        <span class="layered_subtitle">Size</span>
                                    </div>
										<ul class="col-lg-12 layered_filter_ul productSize">
										 <g:each in="${sizeList}" var="size">
										 <li class="nomargin hiddable col-lg-6">																	
										 		<input type="checkbox" class="checkbox" name="itemSize" id="" value="${size[0]}">
                                                <label for="itemSize"><a href="#">${size[0]}</a></label>																														 										
										</li>
										</g:each>
										</ul>
								</div>
								
								<div class="layered_filter clearfix">
                                    <div class="layered_subtitle_heading">
                                        <span class="layered_subtitle">Item Type</span>
                                    </div>
										<ul class="col-lg-12 layered_filter_ul itemType">
										 <g:each in="${typeList}" var="itemType">
										 <li class="nomargin hiddable col-lg-6">																	
										 		<input type="checkbox" class="checkbox" name="itemType" id="" value="${itemType}">
                                                <label for="itemSize"><a href="#">${itemType}</a></label>																														 										
										</li>
										</g:each>
										</ul>
								</div>
								
								<div class="layered_filter clearfix">
                                    <div class="layered_subtitle_heading">
                                        <span class="layered_subtitle">Item For</span>
                                    </div>
										<ul class="col-lg-12 layered_filter_ul itemFor">
										 <g:each in="${itemForList}" var="itemFor">
										 <li class="nomargin hiddable col-lg-6">																	
										 		<input type="checkbox" class="checkbox" name="itemFor" id="" value="${itemFor}">
                                                <label for="itemSize"><a href="#">${itemFor}</a></label>																														 										
										</li>
										</g:each>
										</ul>
								</div>
								
								<div class="layered_filter clearfix">
                                    <div class="layered_subtitle_heading">
                                        <span class="layered_subtitle">Category</span>
                                    </div>
										<ul class="col-lg-12 layered_filter_ul itemCategory">
										 <g:each in="${itemCategoryList}" var="category">
										 <li class="nomargin hiddable col-lg-6">																	
										 		<input type="checkbox" class="checkbox" name="itemCategory" id="" value="${category}">
                                                <label for="itemSize"><a href="#">${category}</a></label>																														 										
										</li>
										</g:each>
										</ul>
								</div>
							</div>
							</form>
						</div>
				</div>
				<!-- /Block layered navigation module -->

                    <!-- /Block layered navigation module -->
                    
                    <!-- /Block layered navigation module -->

			</div>
						
                        <div id="center_column" class="center_column  col-sm-9">
	    				<div class="content_scene_cat">
							<!-- Category image -->
                    			<div class="content_scene_cat_bg" style="background:url(/images/banner1.jpg) 0 center no-repeat; min-height:217px;"></div>
                        </div>
							<div class="content_sortPagiBar clearfix">
								<div class="sortPagiBar clearfix">
                                    <form id="productsSortForm" action="" class="productsSortForm">
                                        <div class="select selector1">
                                            <label for="selectProductSort">Sort by</label>
                                                <select id="selectProductSort" class="selectProductSort form-control">
                                                	<option value="" selected="selected">--</option>
                                                    <option value="">Price: Lowest first</option>
                                                     <option value="">Price: Highest first</option>
													<option value="">Product Name: A to Z</option>
                                                    <option value="">Product Name: Z to A</option>
													<option value="">In stock</option>
													<option value="">Reference: Lowest first</option>
                                                    <option value="">Reference: Highest first</option>
                                           		 </select>
                                        </div>
                                    </form>
									<!-- /Sort products -->
			
			    					<!-- nbr product/page -->
									<form action="" method="" class="nbrItemPage">
                                        <div class="clearfix selector1">
                                        	<label for="nb_item">Show</label>
                                            <input type="hidden" name="id_category" value="3">
                                                    <select name="n" id="nb_item" class="form-control">
                                                        <option value="9" selected="selected">9</option>                                                                                                			 															 														<option value="18">18</option>
													</select>

                                            <span>per page</span>
                                        </div>
									</form>
									<!-- /nbr product/page -->

			    					
								</div>
							</div>
							<div id="itemList">
								<g:render template="itemGrid"></g:render>
							</div>
                                    <div class="content_sortPagiBar">
                                        <div class="bottom-pagination-content clearfix">
                                    		<!-- Pagination -->
                                            <div id="pagination_bottom" class="pagination clearfix">
                                                <ul class="pagination">
                                                    <li class="active current"><span><span>1</span></span></li>
                                                    <li><a href="#"><span>2</span></a></li>
                                                </ul>
                                            </div>
                                            <div class="product-count">Showing 1 - 9 of 13 items</div>
                                    		<!-- /Pagination -->
                                        </div>
                                    </div>
								</div><!-- #center_column -->
							</div><!-- .row -->
						</div><!-- #columns -->
					</div><!-- .columns-container -->
			<g:render template="/home/addToCartPopUp" />
            <!-- Footer -->
		</div>
<!-- #page -->
<script type="text/javascript">
var filterUrl = "${createLink(controller:'home',action:'filterData')}";
$(document).ready(function(){
	$('.brands li .checkbox').on('click', function(){
		$('.brands li .checkbox').removeAttr('checked')
		})
	$('.itemPrice li .checkbox').on('click', function(){
		$('.itemPrice li .checkbox').removeAttr('checked')
		})
	$('.productColor li .checkbox').on('click', function(){
		$('.productColor li .checkbox').removeAttr('checked')
		})
	$('.productSize li .checkbox').on('click', function(){
		$('.productSize li .checkbox').removeAttr('checked')
		})
	$('.itemType li .checkbox').on('click', function(){
		$('.itemType li .checkbox').removeAttr('checked')
		})
	$('.itemFor li .checkbox').on('click', function(){
		$('.itemFor li .checkbox').removeAttr('checked')
		})
	$('.itemCategory li .checkbox').on('click', function(){
		$('.itemCategory li .checkbox').removeAttr('checked')
		})
	var itemCategory = '${itemCategory}'
	var itemFor = '${itemFor}'
	var brand = '${brand}'
		$('.brands li').each(function(){
		if($(this).find('.checkbox').val() == brand)
			$(this).find('.checkbox').attr('checked', true);
		})
		if(itemCategory !=''){
		$('.itemCategory li').each(function(){
		if($(this).find('.checkbox').val() == itemCategory)
			$(this).find('.checkbox').attr('checked', true);
		})
		}

		if(itemFor != ''){
		$('#pt_custommenu div').removeClass('act')
		$('#'+itemFor).addClass('act')	
		$('.itemFor li').each(function(){
		if($(this).find('.checkbox').val() == itemFor)
			$(this).find('.checkbox').attr('checked', true);
		})
		}
		
$('.checkbox').on('click', function(){
	var list = {}
		$(this).attr('checked','checked')
		$('.checkbox').each(function(){
			if($(this).attr('checked') == 'checked'){
				var name = $(this).attr('name')
				var value =  $(this).attr('value')
				list[name] =  value
				}
				});
		jQuery.ajax({
				type : 'POST',
				url : filterUrl,
				async : false,
				data : list,
				success : function(data, textStatus) {
					$('#itemList').html(data)
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
				}
			});
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
	
</script>
</body>
</html>