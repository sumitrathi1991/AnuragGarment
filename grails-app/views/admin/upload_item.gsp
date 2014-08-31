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
				<li><a href="#Tab1" class="glyphicons upload"><i></i> Upload</a></li>
				<li><a href="#Tab2" class="glyphicons settings"><i></i>Manage</a></li>
			</ul>
			<!-- // Full Top Style END -->
						
						
			<!-- Top Menu Right -->
			<ul class="topnav pull-right hidden-phone">
				<!-- Profile / Logout menu -->
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
                    <li><a href="#Tab2">Upload Item</a></li>
                </ul>

                <h1>Upload Item</h1>
                <div class="innerLR">

                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-gray">
                    <div class="widget-body">
                        <p>Choose the Details of your Product & Upload Multiple images for this.</p>
                    </div>
                </div>
                <!-- // Widget END -->
	
                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-white">
                
                    <!-- Widget heading -->
                    <div class="widget-head">
                        <h4 class="heading">Item Details</h4>
                    </div>
                    <!-- // Widget heading END -->
                    
                    <div class="widget-body">
                        <div class="row-fluid">
                            <div class="span6">
                                <div class="row-fluid">
                                    <label class="strong">Item Name:</label>
                                    <input type="text" placeholder="Enter the name of item" class="span12">
                                </div>
                                <div class="row-fluid">
                                    <label class="strong">Description:</label>
                                    <textarea placeholder="Enter the description of item" rows="5" class="span12"></textarea>
                                </div>
                                <div class="row-fluid">
                                    <label class="strong">Item Brand:</label>
                                    <input type="text" placeholder="Enter the brand name of item" class="span12">
                                </div>
                                 <div class="row-fluid">
                                    <label class="strong">Type:</label>
                                    <select class="span12">
                                        <option selected>Sports</option>
                                        <option>Formal</option>
                                        <option>Ethnic</option>
                                    </select>
                                </div>
                                 <div class="row-fluid">
                                    <label class="strong">Quantity:</label>
                                    <input type="number" placeholder="Number of items" class="span12">
                                </div>
                                 <div class="row-fluid">
                                    <label class="strong">Size:</label>
                                    <select class="span12">
                                        <option>6</option>
                                        <option>7</option>
                                        <option selected>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                    </select>
                                </div>
                                <div class="row-fluid">
                                    <label class="strong">Price:</label>
                                    <input type="number" placeholder="Number of items" class="span12">
                                </div>
                                 <div class="row-fluid">
                                    <label class="strong">Color:</label>
                                    <select class="span12">
                                        <option>Red</option>
                                        <option>White</option>
                                        <option>Black</option>
                                        <option selected>Grey</option>
                                        <option>Blue</option>
                                    </select>
                                </div>
                                <div class="row-fluid">
                                    <label class="strong">Image:</label>
                                    <a href="#modal-upload" data-toggle="modal" class="btn btn-default btn-file" >Select Files</a>
                                </div>
                                 <div class="row-fluid">
                                    <div class="span3 offset9">
                                        <button type="button" class="btn btn-default " data-dismiss="modal">Cancel</button>
                                        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Add</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                    <div classr="row-fluid">
                            <a href="#modal-AddItem" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right btnT10"><i></i> Add</span></a>
                    </div>
                </div>
                <!-- // Widget END -->
	
                <!-- Widget -->
                <div class="widget widget-heading-simple widget-body-white">
                    <!-- Table -->
                <table class="footable table table-striped table-bordered table-white table-primary">
                
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
                        <tr class="gradeX">
                            <td>Nike Stuts</td>
                            <td>Lorem Ipsume</td>
                            <td>Nike</td>
                            <td>Football</td>
                            <td>1</td>
                            <td>8</td>
                            <td>3000</td>
                            <td>White</td>
                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
                        </tr>
                        <tr class="gradeX">
                            <td>Nike Stuts</td>
                            <td>Lorem Ipsume</td>
                            <td>Nike</td>
                            <td>Football</td>
                            <td>1</td>
                            <td>8</td>
                            <td>3000</td>
                            <td>White</td>
                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
                        </tr>
                        <tr class="gradeX">
                            <td>Nike Stuts</td>
                            <td>Lorem Ipsume</td>
                            <td>Nike</td>
                            <td>Football</td>
                            <td>1</td>
                            <td>8</td>
                            <td>3000</td>
                            <td>White</td>
                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
                        </tr>
                        <tr class="gradeX">
                            <td>Nike Stuts</td>
                            <td>Lorem Ipsume</td>
                            <td>Nike</td>
                            <td>Football</td>
                            <td>1</td>
                            <td>8</td>
                            <td>3000</td>
                            <td>White</td>
                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
                        </tr>
                        <tr class="gradeX">
                            <td>Nike Stuts</td>
                            <td>Lorem Ipsume</td>
                            <td>Nike</td>
                            <td>Football</td>
                            <td>1</td>
                            <td>8</td>
                            <td>3000</td>
                            <td>White</td>
                            <td><i class="icon-edit"></i><i class="icon-remove-sign"></i></td>
                        </tr>
                        <!-- // Table row END -->
                        
                        
                        
                    </tbody>
                    <!-- // Table body END -->
                    
                </table>
                <!-- // Table END -->
                    
                    </div>
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
		
	</div>
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
	
	<!-- Modal Upload Product Images (Multiple) -->
        <div class="modal modal-lg hide fade" id="modal-upload">
        
        <!-- Modal heading -->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Upload Images</h3>
        </div>
        <!-- // Modal heading END -->
        
        <!-- Modal body -->
        <div class="modal-body">
            <div class="widget-body">
            
                <!-- Plupload -->
                <form id="pluploadForm">
                    <div id="pluploadUploader">
                        <p>You browser doesn't have Flash, Silverlight, Gears, BrowserPlus or HTML5 support.</p>
                    </div>
                </form>
                <!-- // Plupload END -->
                
            </div>
        </div>
        <!-- // Modal body END -->
        
        <!-- Modal footer -->
        <div class="modal-footer">
            <span class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</span> 
            <span class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Save changes</span>
        </div>
        <!-- // Modal footer END -->
        
    </div>
	<!-- Modal Upload Product Images (Multiple) Ends -->
	
	
	<!--Modal Add Item -->
        <div class="modal modal-lg hide fade" id="modal-AddItem">
        
	        <!-- Modal heading -->
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	            <h3>Upload Images</h3>
	        </div>
	        <!-- // Modal heading END -->
        
	        <!-- Modal body -->
	        <div class="modal-body">
	            <div class="widget-body">
	              <div class="row-fluid">
	            	 <div class="span12">									<div class="row-fluid">				                          <label class="strong">Item Name:</label>				                          <input type="text" placeholder="Enter the name of item" class="span12">				                     </div>
				                     <div class="row-fluid">
				                          <label class="strong">Description:</label>
				                          <textarea placeholder="Enter the description of item" rows="5" class="span12"></textarea>
				                      </div>
	                                <div class="row-fluid">
	                                    <label class="strong">Item Brand:</label>
	                                    <input type="text" placeholder="Enter the brand name of item" class="span12">
	                                </div>
	                                 <div class="row-fluid">
	                                    <label class="strong">Type:</label>
	                                    <select class="span12">
	                                        <option selected>Sports</option>
	                                        <option>Formal</option>
	                                        <option>Ethnic</option>
	                                    </select>
	                                </div>
	                                 <div class="row-fluid">
	                                    <label class="strong">Quantity:</label>
	                                    <input type="number" placeholder="Number of items" class="span12">
	                                </div>
	                                 <div class="row-fluid">
	                                    <label class="strong">Size:</label>
	                                    <select class="span12">
	                                        <option>6</option>
	                                        <option>7</option>
	                                        <option selected>8</option>
	                                        <option>9</option>
	                                        <option>10</option>
	                                    </select>
	                                </div>
	                                <div class="row-fluid">
	                                    <label class="strong">Price:</label>
	                                    <input type="number" placeholder="Number of items" class="span12">
	                                </div>
	                                 <div class="row-fluid">
	                                    <label class="strong">Color:</label>
	                                    <select class="span12">
	                                        <option>Red</option>
	                                        <option>White</option>
	                                        <option>Black</option>
	                                        <option selected>Grey</option>
	                                        <option>Blue</option>
	                                    </select>
	                                </div>
	                  </div>
	                  </div>
	            </div>
	        </div>
	        <!-- // Modal body END -->
        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	            <span class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</span> 
	            <span class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Add</span>
	        </div>
	        <!-- // Modal footer END -->
	        
    </div>
	<!-- Modal Add Item Ends -->
	
	
<script>
  $(function() {
    $( "#content" ).tabs();
  });
  </script>
</body>
</html>