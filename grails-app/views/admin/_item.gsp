
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
	            <li class="active"><a href="#tab-ItemUpload" id="itemTab" class="glyphicons upload" data-toggle="tab"><i></i>Item Upload</a>
	            </li>
	            <li ><a href="#tab-BannerList" id="bannerTab" data-toggle="tab" class="glyphicons upload"><i></i> <span>Banner Upload</span></a>
	            </li>
	            <li><a href="#tab-BrandList" id="brandTab" data-toggle="tab" class="glyphicons upload"><i></i> <span>Brand Upload</span></a>
	            </li>
	        </ul>
	    </div>
	    <!-- // Tabs Heading END -->
	  <div class="widget-body">
	    <div class="tab-content" id="itemDetailsTab">
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
	        <div class="tab-pane" id="tab-BannerList">
	        </div>
	        <!-- // Tab content END -->
	        
	        <!-- Tab content BrandUpload-->
	        <div class="tab-pane" id="tab-BrandList">
	        </div>
	       
	        <!-- // Tab content END -->
	    </div>
	   </div>
	</div>
</div>

<script>
$(document).ready(function() {

	$("#itemTab").click(function() {
			getItemList();
		});
	
	$("#bannerTab").click(function() {
			getBannerList();
		});

	$("#brandTab").click(function() {
			getBrandList();
		});
	
	});
	
	$('#itemDataTable').dataTable({
		"sPaginationType" : "bootstrap",
		"oLanguage" : {
			"sLengthMenu" : "_MENU_ per page"
		}

	});
	

</script>