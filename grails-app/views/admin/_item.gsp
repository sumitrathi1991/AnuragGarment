
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
							<td style="text-align: center;">
								<g:if test="${item.isPublished == false}">
									<g:remoteLink controller="item" action="publishItem" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
									<span class="btn btn-primary circle_plus  ">
										Un-published</span>
									</g:remoteLink>
								</g:if>
								<g:else>
									<g:remoteLink controller="item" action="publishItem" params="${[id: item.id,sortType:'id']}" update="manageTabDiv">
									<span class="btn btn-primary circle_plus" >
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
									<i class="icon-edit"></i>
								</g:remoteLink>
							</td>
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