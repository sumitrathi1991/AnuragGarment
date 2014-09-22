<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sticky-sidebar sidebar-hat"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sticky-sidebar sidebar-hat"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sticky-sidebar sidebar-hat"> <![endif]-->
<!--[if gt IE 8]> <html class="animations ie gt-ie8 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sticky-sidebar sidebar-hat"> <![endif]-->
<!--[if !IE]><!-->
<html class="animations fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sticky-sidebar sidebar-hat"><!-- <![endif]-->
<head>
	<title>Anand Trading</title>
	
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name='layout' content='adminMain' />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
	
	
	
	<!-- Global -->
	<script>
	//<![CDATA[	
	var basePath = '',
		commonPath = '';

	//]]>
	
	</script>
    
</head>
<body class="document-body ">
	
	
        <!-- UI Tab1 -->
			<div class="ui-tabs" id="orderedTabDiv">				
                <g:render template="/admin/orderedItem" />
   			 </div>
    	<!-- UI Tab1 Ends -->
        
        <!-- UI Tab2 -->
   			<div class="ui-tabs" id="manageTabDiv">				
            </div>
         <!-- UI Tab2 Ends -->   
         
		<!-- // Widget END -->
		
		</div>
		<!-- // Content END -->
	</div>	
		
	</div>
		<div class="clearfix"></div>
		<!-- // Sidebar menu & content wrapper END -->
				
		<div id="footer" class="hidden-print">
			
			<!--  Copyright Line -->
			<div class="copy">&copy; 2012 - 2013 - All Rights Reserved. <a href="#" target="_blank">Anand Trading</a> </div>
			<!--  End Copyright Line -->
	
		</div>
		<!-- // Footer END -->
	<!-- // Main Container Fluid END -->


	<div id="timepicker4Modal" class="modal hide fade"> 
		<div class="modal-header"><h3>A Timepicker Inside A Modal</h3></div>
		<div class="modal-body" style="min-height: 150px; overflow: visible;">
			 <span class="bootstrap-timepicker" style="vertical-align: middle;">
				 <input id="timepicker4" class="input-small" value="10:35 AM" type="text" />
				 <i class="icon-time"></i>
			 </span>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
		</div>
	</div>
	
	<!--Modal Add Item -->
        <div class="modal modal-lg hide fade" id="modal-AddItem">
        	<g:render template="/admin/upload_item" />
    	</div>
	<!-- Modal Add Item Ends -->
	
	<!--Loading overlay Starts Here-->
    	<div id="loading">
        	<span class="icon-spinner icon-spin"></span>
      	</div>
		<!--Loading overlay Ends Here-->
			
<script>
var uploadItemUrl = "${createLink(controller:'item',action:'addItem')}";
var itemDataUrl = "${createLink(controller:'admin',action:'getItemList')}";
var oderItemDataUrl = "${createLink(controller:'admin',action:'getOrderedItemList')}";

registerValidation();

$(document).ready(function() {
    $("#loading").bind("ajaxSend", function() {
        $(this).fadeIn();
    }).bind("ajaxComplete", function() {
        $(this).fadeOut();
    });
    $("#orderTab").click(function(){
    	getOrderedUserList();
	  });
    $("#manageTab").click(function(){
    	getItemList();
	  });   
   
});
  $(function() {
    $( "#content" ).tabs();
  });
 
	
  </script>
</body>
</html>