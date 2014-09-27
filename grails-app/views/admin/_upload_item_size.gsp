
<!-- Modal heading -->
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<h3>Add Item sizes </h3>
</div>
<!-- // Modal heading END -->

<!-- Modal body -->
<form id="uploadItemSizeForm" name="uploadItemSizeForm" onsubmit="return false" >
<div class="modal-body">
	<div class="widget-body">
		<div class="row-fluid">
			<div class="span12">
				<input type="hidden" name="itemId" value="${item.id}">
				<div class="row-fluid">
					<label class="strong">Quantity:</label> 
					<input type="number" id="itemQuantity" name="itemQuantity" placeholder="Number of items" min="1" value="1" class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Size:</label> 
					<select class="span12" id="itemSize" name="itemSize">
						<option value="6" >6</option>
						<option value="7" >7</option>
						<option selected value="8" >8</option>
						<option value="9" >9</option>
						<option value="10" >10</option>
					</select>
				</div>
				<div class="row-fluid">
					<label class="strong">Color:</label> 
					<select class="span12" id="itemColor" name="itemColor">
						<option value="Red" >Red</option>
						<option value="White" >White</option>
						<option value="Black" >Black</option>
						<option selected value="Grey" >Grey</option>
						<option value="Blue" >Blue</option>
					</select>
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
	<button type="submit" id="submitItemSizeButton" class="btn btn-primary" name="submitItemSizeButton"  aria-hidden="true">Add</button>
</div>
</form>
<script>
var uploadItemSizeUrl = "${createLink(controller:'item',action:'addItemSize')}";
$(document).ready(function() {
	 $("#submitItemSizeButton").click(function(){
	    	uploadItemSize();
	    });
});
</script>
<!-- // Modal footer END -->
