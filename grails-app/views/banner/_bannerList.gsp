 <!-- Widget -->
<div class="widget widget-heading-simple widget-body-gray clearfix">
	<div class="row-fluid" onClick="addItemOverlay()">
		<a href="#modal-AddBanner" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right"><i></i>Add</span></a>
	</div>
</div>
 <!-- Table -->
 	<table id="bannerDataTable" class=" table table-striped table-bordered table-condensed table-white">
	<!-- Table heading -->
		<thead>
			<tr>
				<th>S.No</th>
				<th>Name</th>
				<th>Position</th>
				<th>Image</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<!-- // Table heading END -->
		
		<!-- Table body -->
		<tbody>
		<g:each in="${bannerList}" var='banner'>
			<!-- Table row -->
			<tr class="gradeX">
				<td>${banner.id}</td>
				<td>${banner.bannerName}</td>
				<td>${banner.bannerDescription}</td>
				<td>${banner.bannerPostion}</td>
				<td>
					<g:if test="${banner.isPublished == false}">
						<g:remoteLink controller="banner" action="publishBanner" params="${[id: banner.id,sortType:'id']}" update="manageTabDiv">
						<span class="btn btn-primary btn-mini">
							Un-published</span>
						</g:remoteLink>
					</g:if>
					<g:else>
						<g:remoteLink controller="banner" action="publishBanner" params="${[id: banner.id,sortType:'id']}" update="manageTabDiv">
						<span class="btn btn-success btn-mini">
							published</span>
						</g:remoteLink>
					</g:else>
				</td>
				<td>
					<i class="icon-edit"></i>
					<g:remoteLink controller="banner" action="deleteBanner" params="${[id: banner.id,sortType:'id']}" update="manageTabDiv">
						<i class="icon-remove-sign"></i>
					</g:remoteLink>
					
				</td>
			</tr>
			</g:each>
			<!-- // Table row END -->
		</tbody>
		<!-- // Table body END -->
		
	</table>
	<!-- Modal Add Item size and colors -->
	 <div class="modal modal-lg hide fade" id="modal-AddBanner">
        	<g:render template="/banner/upload_banner" />
    	</div>
<!-- // Table END -->
<script type="text/javascript">
	       $('#bannerDataTable').dataTable({
	   		"sPaginationType" : "bootstrap",
	   		//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	   		"oLanguage" : {
	   			"sLengthMenu" : "_MENU_ per page"
	   		}

	   	});
</script>
