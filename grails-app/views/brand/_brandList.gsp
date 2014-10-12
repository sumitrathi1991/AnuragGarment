 <!-- Widget -->
<div class="widget widget-heading-simple widget-body-gray clearfix">
	<div class="row-fluid" onClick="addItemOverlay()">
		<a href="#modal-AddBrand" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right"><i></i>Add</span></a>
	</div>
</div>
      	 <!-- Table -->
      	<table id="brandDataTable" class=" table table-striped table-bordered table-condensed table-white">
	<!-- Table heading -->
	<thead>
		<tr>
			<th>S.No.</th>
			<th>Name</th>
			<th>Details</th>
			<th>No. of Items</th>
			<th>Logo</th>
			<th>Status</th>
			<th>Details</th>
		</tr>
	</thead>
	<!-- // Table heading END -->
	
	<!-- Table body -->
	<tbody>
	<g:each in="${brandList}" var='brand'>
		<!-- Table row -->
		<tr class="gradeX">
			<td>${brand.id }</td>
			<td>${brand.brandName }</td>
			<td>${brand.brandDescription }</td>
			<td>${brand.image?.size() }</td>
			<td>
				<img id="image" src="<g:createLink action="renderImageById" controller="image" params="[imageId : "${brand.logo.id}"]"/>" height="50" width="55" border="0"/>
			</td>
			<td>
				<g:if test="${brand.isPublished == false}">
					<g:remoteLink controller="brand" action="publishBrand" params="${[id: brand.id,sortType:'id']}" update="tab-BrandList">
					<span class="btn btn-primary btn-mini">
						Un-published</span>
					</g:remoteLink>
				</g:if>
				<g:else>
					<g:remoteLink controller="brand" action="publishBrand" params="${[id: brand.id,sortType:'id']}" update="tab-BrandList">
					<span class="btn btn-success btn-mini">
						published</span>
					</g:remoteLink>
				</g:else>
			</td>
			<td>
				<i class="icon-edit"></i>
				<g:remoteLink controller="brand" action="deleteBrand" params="${[id: brand.id,sortType:'id']}" update="tab-BrandList">
					<i class="icon-remove-sign"></i>
				</g:remoteLink>
				<g:remoteLink class="linkColor" controller="brand" style="font-size: medium" action="getBrandDetails" params="${[id: brand.id,sortType:'id']}" update="manageTabDiv">
					<i class="icon-list-ul"></i>
				</g:remoteLink>
			</td>
		</tr>
		<!-- // Table row END -->
		</g:each>
		
		
	</tbody>
	<!-- // Table body END -->
	
</table>
		<!-- // Table END -->
		
		<!-- Modal Add Item size and colors -->
	 <div class="modal modal-lg hide fade" id="modal-AddBrand">
        	<g:render template="/brand/upload_brand" />
    	</div>
<script type="text/javascript">
	       $('#brandDataTable').dataTable({
	   		"sPaginationType" : "bootstrap",
	   		//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	   		"oLanguage" : {
	   			"sLengthMenu" : "_MENU_ per page"
	   		}

	   	});
</script>