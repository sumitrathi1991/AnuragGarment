

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray clearfix">
		<div class="widget-body">
		<h1>${item.itemName}</h1>
			<p>${item.itemDescription}</p>
		</div>
		<div class="row-fluid btnT10">
			<span class="pull-right">
				<button class="btn btn-default btn-icon glyphicons circle_arrow_left" onClick="getItemList();"><i></i>Back</button>
				<a href="#modal-AddItem-Size" data-toggle="modal" onClick="addItemOverlay()" class="btn btn-primary btn-icon glyphicons circle_plus"><i></i>Add</a>
			</span>
		</div>
	</div>
	<!-- // Widget END -->

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
			<!-- Table -->
			<table id="itemDataTable"
				class=" table table-striped table-bordered table-condensed table-white">

				<!-- Table heading -->
				<thead>
					<tr>
						<th data-class="expand">Size</th>
						<th data-hide="phone,tablet">Quantity</th>
						<th data-hide="phone,tablet">Color</th>
						<th data-hide="phone">Images</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<!-- // Table heading END -->

				<!-- Table body -->
				<tbody>

					<!-- Table row -->
					<g:each in="${item.itemSize}" var='itemSize'>
						<tr class="gradeX">
							<td>
								${itemSize.itemSizeValue}
							</td>
							<td >
								${itemSize.quantity}
							</td>
							<td>
								<g:each in="${itemSize.itemColor}" var='itemColor'>${itemColor.itemColorValue}
								</g:each>
							</td>
							<td>
							<g:each in="${itemSize.itemColor}" var='itemColor'>
								<g:each in="${itemColor.imageList}" var='image'>
									<img id="image" src="<g:createLink action="renderImageById" controller="image" params="[imageId : "${image.id}"]"/>" height="60" width="55" border="0"/>
								</g:each>
								</g:each>
							</td>
							
							<td>
								${itemSize.isNew}
							</td>
							<td><i class="icon-edit"></i><i class="icon-remove-sign"></i>
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
<!-- Modal Add Item size and colors -->
	 <div class="modal modal-lg hide fade" id="modal-AddItem-Size">
        	<g:render template="/admin/upload_item_size" />
    	</div>
	<!-- Modal Add Item size and colors end -->
<script>
$('#itemDataTable').dataTable({
	"sPaginationType": "bootstrap",
	//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"oLanguage": {
		"sLengthMenu": "_MENU_ per page"
	}
	
});
</script>