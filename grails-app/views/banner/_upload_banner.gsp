
<!-- Modal heading -->
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<h3>Add Banner </h3>
</div>
<!-- // Modal heading END -->

<!-- Modal body -->
<form id="uploadBannerForm" name="uploadBannerForm" onsubmit="return false" >
<div class="modal-body">
	<div class="widget-body">
		<div class="row-fluid">
			<div class="span12">
				
				<div class="row-fluid">
					<label class="strong">Banner Name:</label> 
					<input type="text" id="bannerName" name="bannerName" placeholder="Enter your Banner Name"  class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Banner Description:</label> 
					<input type="text" id="bannerDescription" name="bannerDescription" placeholder="Enter your Banner Description"  class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Banner Postion:</label> 
					<select class="span12" id="bannerPostion" name="bannerPostion">
						<option selected value="Home" >Home</option>
						<option value="Men" >Men Search Page</option>
						<option value="Women" >Women Search Page</option>
						<option  value="Kids" >Kids Search Page</option>
						
					</select>
				</div>
				<div class="row-fluid">
				<p>
					<label class="strong">Publish now : </label> 
					<input type="checkbox" name="publishBanner" id="publishBanner" value="1" checked="checked">
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
	<button type="submit" id="submitAddBannerButton" class="btn btn-primary" name="submitItemSizeButton"  aria-hidden="true">Add</button>
</div>
</form>
<script>
var uploadBannerUrl = "${createLink(controller:'banner',action:'addBanner')}";
$(document).ready(function() {
	 $("#submitAddBannerButton").click(function(){
		 addBanner();
	    });
});
</script>
<!-- // Modal footer END -->
