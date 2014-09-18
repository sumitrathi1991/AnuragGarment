
<ul class="breadcrumb">
	<li>You are here</li>
	<li><a href="#" class="glyphicons settings"><i></i> ANAND
			TRADING</a></li>
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
		<div class="row-fluid" onClick="addItemOverlay()">
			<a href="#modal-AddItem" data-toggle="modal"><span
				class="btn btn-primary btn-icon glyphicons circle_plus pull-right btnT10"><i></i>
					Add</span></a>
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
							<td>
								${item.itemName }
							</td>
							<td>
								${item.itemDescription }
							</td>
							<td>
								${item.itemBrand }
							</td>
							<td>
								${item.itemType }
							</td>
							<td>
								${item.itemSize.quantity }
							</td>
							<td>
								${item.itemSize.label }
							</td>
							<td>
								${item.itemSize.itemPrice }
							</td>
							<td>
								${item.itemColor.label }
							</td>
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
<script>
$('#itemDataTable').dataTable({
	"sPaginationType": "bootstrap",
	//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"oLanguage": {
		"sLengthMenu": "_MENU_ per page"
	}
	
});
</script>