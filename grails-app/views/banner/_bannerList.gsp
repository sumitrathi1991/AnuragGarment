 <!-- Widget -->
<div class="widget widget-heading-simple widget-body-gray clearfix">
	<div class="row-fluid" onClick="addItemOverlay()">
		<a href="#modal-AddItem" data-toggle="modal"><span class="btn btn-primary btn-icon glyphicons circle_plus pull-right"><i></i>Add</span></a>
	</div>
</div>
 <!-- Table -->
 	<table id="bannerDataTable" class=" table table-striped table-bordered table-condensed table-white">
	<!-- Table heading -->
		<thead>
			<tr>
				<th>S.No</th>
				<th>Name</th>
				<th>Postion</th>
				<th>Image</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<!-- // Table heading END -->
		
		<!-- Table body -->
		<tbody>
		
			<!-- Table row -->
			<tr class="gradeX">
				<td>1</td>
				<td>Sports Shoes</td>
				<td>Home</td>
				<td>Dwarka</td>
				<td>publish</td>
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
			<!-- // Table row END -->
			
			<!-- Table row -->
			<tr class="gradeC">
				<td>Sumit Rathi</td>
				<td>Formal Shoes</td>
				<td>3</td>
				<td>Bhadurgarh</td>
				<td>5 Sep 2014</td>
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
			<!-- // Table row END -->
			
			<!-- Table row -->
			<tr class="gradeC">
				<td>Shiv Kumar</td>
				<td>Casual Shoes</td>
				<td>1</td>
				<td>Najafgarh</td>
				<td>3 Sep 2014</td>
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
			<!-- // Table row END -->
			
			<!-- Table row -->
			<tr class="gradeC">
				<td>Binod Singh</td>
				<td>Sports Shoes</td>
				<td>3</td>
				<td>Mehrauli</td>
				<td>8 Sep 2014</td>
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
			<!-- // Table row END -->
			
			
		</tbody>
		<!-- // Table body END -->
		
	</table>
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
