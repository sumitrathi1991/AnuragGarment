
<ul class="breadcrumb">
	<li>You are here</li>
	<li><a href="#" class="glyphicons settings"><i></i> ANAND
			TRADING</a></li>
	<li class="divider"><i class="icon-caret-right"></i></li>
	<li>Item</li>
</ul>

<h1>Manage Item</h1>
<div class="innerLR">
	<div class="widget widget-tabs widget-tabs-gray">
	    <!-- Tabs Heading -->
	    <div class="widget-head">
	        <ul>
	            <li class="active"><a href="#tab-ItemUpload" class="glyphicons upload" data-toggle="tab"><i></i>Item Upload</a>
	            </li>
	            <li><a href="#tab-BannerUpload" data-toggle="tab" class="glyphicons upload"><i></i> <span>Banner Upload</span></a>
	            </li>
	            <li><a href="#tab-BrandUpload" data-toggle="tab" class="glyphicons upload"><i></i> <span>Brand Upload</span></a>
	            </li>
	        </ul>
	    </div>
	    <!-- // Tabs Heading END -->
	  <div class="widget-body">
	    <div class="tab-content">
	        <!-- Tab content ItemUpload-->
	        <div class="tab-pane active" id="tab-ItemUpload">
	        	<!-- Widget -->
				<div class="widget widget-heading-simple widget-body-gray clearfix">
					<div class="row-fluid" onClick="addItemOverlay()">
						<a href="#modal-AddItem" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right"><i></i>Add</span></a>
					</div>
				</div>
				<!-- // Widget END -->
							<!-- Table -->
							<table id="itemDataTable" class=" table table-striped table-bordered table-condensed table-white">
								<!-- Table heading -->
								<thead>
									<tr>
										<th data-class="expand">Name</th>
										<th data-hide="phone,tablet">Description</th>
										<th data-hide="phone,tablet">Brand</th>
										<th data-hide="phone">Category</th>
										<th>Type</th>
										<th>For</th>
										<th>Price</th>
										<th>Discount</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<!-- // Table heading END -->
				
								<!-- Table body -->
								<tbody>
				
									<!-- Table row -->
									<g:each in="${itemList}" var='item'>
										<tr class="gradeX">
											<td>
												${item.itemName }
											</td>
											<td title = "${item.itemDescription }">
												${item.itemDescription }
											</td>
											<td>
												${item.itemBrand }
											</td>
											<td>
												${item.itemCategory }
											</td>
											<td>
												${item.itemType }
											</td>
											<td>
												${item.itemFor }
											</td>
											<td>
												${item.itemPrice }
											</td>
											<td>
												${item.discountRate }
											</td>
											<td>
												<g:if test="${item.isPublished == false}">
													<g:remoteLink controller="item" action="publishItem" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
													<span class="btn btn-primary btn-mini">
														Un-published</span>
													</g:remoteLink>
												</g:if>
												<g:else>
													<g:remoteLink controller="item" action="publishItem" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
													<span class="btn btn-success btn-mini">
														published</span>
													</g:remoteLink>
												</g:else>
											</td>
											<td>
												<i class="icon-edit"></i>
												<g:remoteLink controller="item" action="deleteItem" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
													<i class="icon-remove-sign"></i>
												</g:remoteLink>
												<g:remoteLink class="linkColor" controller="item" style="font-size: medium" action="getItemDetails" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
													<i class="icon-list-ul"></i>
												</g:remoteLink>
											</td>
										</tr>
									</g:each>
								</tbody>
								<!-- // Table body END -->
							</table>
							<!-- // Table END -->
	        	</div>
	       	 <!-- // Tab content END -->
	
	        <!-- Tab content BannerUpload-->
	        <div class="tab-pane" id="tab-BannerUpload">
	       		 <!-- Table -->
	            	<table class="dynamicTable colVis table table-striped table-bordered table-condensed table-white">
							
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
									<tr class="gradeX">
										<td>Himanshu Chopra</td>
										<td>Sports Shoes</td>
										<td>2</td>
										<td>Dwarka</td>
										<td>2 Sep 2014</td>
										<td>Net Banking</td>
										<td>5000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Sumit Rathi</td>
										<td>Formal Shoes</td>
										<td>3</td>
										<td>Bhadurgarh</td>
										<td>5 Sep 2014</td>
										<td>Credit Card</td>
										<td>4000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Shiv Kumar</td>
										<td>Casual Shoes</td>
										<td>1</td>
										<td>Najafgarh</td>
										<td>3 Sep 2014</td>
										<td>Debit Card</td>
										<td>3000/-</td>
										<td>Accepted</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Binod Singh</td>
										<td>Sports Shoes</td>
										<td>3</td>
										<td>Mehrauli</td>
										<td>8 Sep 2014</td>
										<td>COD</td>
										<td>9000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									
								</tbody>
								<!-- // Table body END -->
								
							</table>
						<!-- // Table END -->
	        </div>
	        <!-- // Tab content END -->
	
	        <!-- Tab content BrandUpload-->
	        <div class="tab-pane" id="tab-BrandUpload">
	            	 <!-- Table -->
	            	<table class="dynamicTable colVis table table-striped table-bordered table-condensed table-white">
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
									<tr class="gradeX">
										<td>Ranbir Kapoor</td>
										<td>Sports Shoes</td>
										<td>2</td>
										<td>Dwarka</td>
										<td>2 Sep 2014</td>
										<td>Net Banking</td>
										<td>5000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Arjun Kapoor</td>
										<td>Formal Shoes</td>
										<td>3</td>
										<td>Bhadurgarh</td>
										<td>5 Sep 2014</td>
										<td>Credit Card</td>
										<td>4000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Amir Khan</td>
										<td>Casual Shoes</td>
										<td>1</td>
										<td>Najafgarh</td>
										<td>3 Sep 2014</td>
										<td>Debit Card</td>
										<td>3000/-</td>
										<td>Accepted</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									<!-- Table row -->
									<tr class="gradeC">
										<td>Imran Khan</td>
										<td>Sports Shoes</td>
										<td>3</td>
										<td>Mehrauli</td>
										<td>8 Sep 2014</td>
										<td>COD</td>
										<td>9000/-</td>
										<td>Pending</td>
										<td class="center"><a href="" class="glyphicons circle_info"><i></i></a></td>
									</tr>
									<!-- // Table row END -->
									
									
								</tbody>
								<!-- // Table body END -->
								
							</table>
						<!-- // Table END -->
	        	</div>
	        <!-- // Tab content END -->
	    </div>
	   </div>
	</div>
</div>

<script>
$('#itemDataTable').dataTable({
	"sPaginationType": "bootstrap",
	//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"oLanguage": {
		"sLengthMenu": "_MENU_ per page"
	}
	
});

$('.dynamicTable').dataTable({
	"sPaginationType": "bootstrap",
	//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"oLanguage": {
		"sLengthMenu": "_MENU_ per page"
	}
	
});
</script>