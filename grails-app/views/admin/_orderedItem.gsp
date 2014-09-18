<ul class="breadcrumb">
	<li>You are here</li>
	<li><a href="#Tab1" class="glyphicons upload"><i></i> ANAND
			TRADING</a></li>
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
			<table id="oderedItemTable"
				class="table table-striped table-bordered table-condensed table-white">

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
							<td>
								${user.fullName }
							</td>
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
<script>
$('#oderedItemTable').dataTable({
	"sPaginationType": "bootstrap",
	//"sDom": "<'row-fluid'<'span5'T><'span3'l><'span4'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"oLanguage": {
		"sLengthMenu": "_MENU_ per page"
	}
	
});
</script>