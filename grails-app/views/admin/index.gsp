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
	
		<!-- Main Container Fluid -->
	<div class="container-fluid menu-hidden sidebar-hidden-phone fluid menu-left">
		
				<!-- Sidebar menu & content wrapper -->
		<div id="wrapper">
				
		<!-- Content -->
		<div id="content">
		
				<!-- Top navbar -->
		<div class="navbar main hidden-print">
		
			<!-- Menu Toggle Button -->
			<button type="button" class="btn btn-navbar pull-left visible-phone">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- // Menu Toggle Button END -->
						
			<!-- Full Top Style -->
			<ul class="topnav pull-left">
				<li><a href="#Tab1" class="glyphicons upload"><i></i> Order</a></li>
				<li><a href="#Tab2" class="glyphicons settings"><i></i>Manage</a></li>
			</ul>
			<!-- // Full Top Style END -->
						
						
			<!-- Top Menu Right -->
			<ul class="topnav pull-right hidden-phone">
				<!-- Profile / Logout menu -->
				<li class="account dropdown dd-1">
					<a  class="glyphicons "><span class="hidden-tablet hidden-phone hidden-desktop-1">${userFullName }</span><i></i></a>
				</li>
				<li class="account dropdown dd-1">
					<a onClick="loginOut()" class="glyphicons logout lock"><span class="hidden-tablet hidden-phone hidden-desktop-1">Logout</span><i></i></a>
				</li>
				<!-- // Profile / Logout menu END -->
				
			</ul>
			<div class="clearfix"></div>
			
		</div>
		<!-- Top navbar END -->
        
        <!-- UI Tab1 -->
			<div class="ui-tabs" id="Tab1">				
                <ul class="breadcrumb">
                    <li>You are here</li>
                    <li><a href="#Tab1" class="glyphicons upload"><i></i> ANAND TRADING</a></li>
                    <li class="divider"><i class="icon-caret-right"></i></li>
                    <li><a href="#Tab2">Orders</a></li>
                </ul>

                <h1>Orders</h1>
                <div class="innerLR">

                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-gray">
                    <div class="widget-body">
                        <p>See the list of the Orders which have been placed.</p>
                    </div>
                </div>
                <!-- // Widget END -->
	
                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-gray">
                    	<div class="widget-body">
                        	<!-- Table -->
							<table class="dynamicTable table table-striped table-bordered table-condensed table-white">
							
								<!-- Table heading -->
								<thead>
									<tr>
										<th>User Name</th>
										<th>Item</th>
										<th>Quantity(s)</th>
										<th>Location</th>
										<th>Order Date</th>
										<th>Payment Type</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Details</th>
									</tr>
								</thead>
								<!-- // Table heading END -->
								
								<!-- Table body -->
								<tbody>
								
									<!-- Table row -->
									 <g:each in="${userList}" var='user'>
									<tr class="gradeX">
										<td>${user.fullName }</td>
										<td>Sports Shoes</td>
										<td>2</td>
										<td>Dwarka</td>
										<td>2 Sep 2014</td>
										<td>Net Banking</td>
										<td>5000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									</g:each>
									<!-- // Table row END -->
											
								</tbody>
								<!-- // Table body END -->
								
							</table>
							<!-- // Table END -->
                        </div>
                    </div>
                    <!-- // Widget END -->
				</div>
   			 </div>
    	<!-- UI Tab1 Ends -->
        
        <!-- UI Tab2 -->
   			<div class="ui-tabs" id="Tab2">				
                <ul class="breadcrumb">
	                <li>You are here</li>
	                <li><a href="#" class="glyphicons settings"><i></i> ANAND TRADING</a></li>
	                <li class="divider"><i class="icon-caret-right"></i></li>
	                <li>Upload Item</li>
                </ul>

				<h1>Manage Item</h1>
				<div class="innerLR">

                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-gray clearfix">
                    <div class="widget-body">
                        <p>Manage/Edit/Delete the items.</p>
                    </div>
                    <div class ="row-fluid" onClick="addItemOverlay()">
                            <a href="#modal-AddItem" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right btnT10"><i></i> Add</span></a>
                    </div>
                </div>
                <!-- // Widget END -->
	
                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-gray">
                	<div class="widget-body">
		                <!-- Table -->
		                <table class="dynamicTable table table-striped table-bordered table-condensed table-white">
		                
		                    <!-- Table heading -->
		                    <thead>
		                        <tr>
		                            <th data-class="expand">Name</th>
		                            <th data-hide="phone,tablet">Description</th>
		                            <th data-hide="phone,tablet">Brand</th>
		                            <th data-hide="phone">Type</th>
		                            <th>Quantity</th>
		                            <th>Size</th>
		                            <th>Price</th>
		                            <th>Color</th>
		                            <th>Action</th>
		                        </tr>
		                    </thead>
		                    <!-- // Table heading END -->
		                    
		                    <!-- Table body -->
		                    <tbody>
		                    
		                        <!-- Table row -->
		                        <g:each in="${itemList}" var='item'>
		                        <tr class="gradeX">
		                            <td>${item.itemName }</td>
		                            <td>${item.itemDescription }</td>
		                            <td>${item.itemBrand }</td>
		                            <td>${item.itemType }</td>
		                            <td>${item.itemSize.quantity }</td>
		                            <td>${item.itemSize.label }</td>
		                            <td>${item.itemSize.itemPrice }</td>
		                            <td>${item.itemColor.label }</td>
		                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
		                        </tr>
		                        </g:each>
		                        
		                        
		                    </tbody>
		                    <!-- // Table body END -->
		                    
		                </table>
		                <!-- // Table END -->
                   	 </div>
                    </div>
                   <!-- // Widget END -->
				</div>
    		</div>
         <!-- UI Tab2 Ends -->   
         
		<!-- // Widget END -->
	
</div>	
	
		
		</div>
		<!-- // Content END -->
		
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
	
	
<script>
  $(function() {
    $( "#content" ).tabs();
  });
  $('.dynamicTable').dataTable({
		"sPaginationType": "bootstrap",
		//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
		"oLanguage": {
			"sLengthMenu": "_MENU_ per page"
		}
		
	});
  </script>
</body>
</html>