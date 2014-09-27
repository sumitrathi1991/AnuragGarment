
<!-- Modal heading -->
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<h3>Add Brand </h3>
</div>
<!-- // Modal heading END -->

<!-- Modal body -->
<form id="uploadBrandForm" name="uploadBrandForm" onsubmit="return false" >
<div class="modal-body">
	<div class="widget-body">
		<div class="row-fluid">
			<div class="span12">
				
				<div class="row-fluid">
					<label class="strong">Name:</label> 
					<input type="text" id="brandName" name="brandName" placeholder="Enter your Brand name" class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Description:</label> 
					<input type="text" id="brandDescription" name="brandDescription" placeholder="Enter your Brand Description" class="span12">
				</div>
				<div class="row-fluid">
				<p>
					<label class="strong">Publish now : </label> 
					<input type="checkbox" name="publishBrand" id="publishBrand" value="1" checked="checked">
				</p>
				</div>
				
				<div class="row-fluid">
					<label class="strong">Upload Images:</label>
						<!-- Plupload -->
							<div id="pluploadUploaderItemSize" class="pluploadUploaderClass">
								<p>You browser doesn't have Flash, Silverlight, Gears, BrowserPlus or HTML5 support.</p>
							</div>
						<!-- // Plupload END -->
	            </div>
			</div>
		</div>
	</div>
</div>
<!-- // Modal body END -->

<!-- Modal footer -->
<div class="modal-footer">
	<span class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</span>
	<button type="submit" id="submitAddBrandButton" class="btn btn-primary" name="submitAddBrandButton"  aria-hidden="true">Add</button>
</div>
</form>
<script>
var uploadBrandUrl = "${createLink(controller:'brand',action:'addBrand')}";
$(document).ready(function() {
	 $("#submitAddBrandButton").click(function(){
		 addBrand();
	    });
});
</script>
<!-- // Modal footer END -->
