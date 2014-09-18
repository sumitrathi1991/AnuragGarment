
<!-- Modal heading -->
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<h3>Upload Images</h3>
</div>
<!-- // Modal heading END -->

<!-- Modal body -->
<form id="uploadItemForm" name="uploadItemForm" onsubmit="return false" >
<div class="modal-body">
	<div class="widget-body">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<label class="strong">Item Name:</label> 
					<input type="text" id="itemName" name="itemName" placeholder="Enter the name of item" class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Description:</label>
					<textarea id="itemDescription" name="itemDescription" placeholder="Enter the description of item" rows="5"
						class="span12"></textarea>
				</div>
				<div class="row-fluid">
					<label class="strong">Item Brand:</label> 
					<select id="itemBrand" name="itemBrand" class="span12">
						<option selected value="Action">Action</option>
						<option value="Adidas" >Adidas</option>
						<option value="Jogger" >Jogger</option>
						<option value="Lakhani" >Lakhani</option>
						<option value="Nike" >Nike</option>
						<option value="Puma" >Puma</option>
						<option value="Red Cheif" >Red Cheif</option>
						<option value="Reebok" >Reebok</option>
						<option value="Relaxo" >Relaxo</option>
					</select>
				</div>
				<div class="row-fluid">
					<label class="strong">Item For:</label> 
					<select class="span12" id="itemFor" name="itemFor">
						<option selected value="Men" >Men</option>
						<option value="Women" >Women</option>
						<option value="Kid" >Kid</option>
					</select>
				</div>
				<div class="row-fluid">
					<label class="strong">Type:</label> 
					<select class="span12" id="itemType" name="itemType">
						<option selected value="Boots" >Boots</option>
						<option value="Casual Shoes" >Casual Shoes</option>
						<option value="Converse" >Converse</option>
						<option value="Combo Offers" >Combo Offers</option>
						<option value="Ethnic" >Ethnic</option>
						<option value="Fabrication" >Fabrication</option>
						<option value="Formal Shoes" >Formal Shoes</option>
						<option value="Floaters" >Floaters</option>
						<option value="High Heel" >High Heel</option>
						<option value="Loafers" >Loafers</option>
						<option value="Sports Shoes" >Sports Shoes</option>
						<option value="Sneakers">Sneakers</option>
						<option value="Sandals" >Sandals</option>
						<option value="Slipper & Flip Flops" >Slipper & Flip Flops</option>
						<option value="Floater Sandals" >Floater Sandals</option>
					</select>
				</div>
				<div class="row-fluid">
					<label class="strong">Quantity:</label> 
					<input type="number" id="itemQuantity" name="itemQuantity" placeholder="Number of items" class="span12">
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
					<label class="strong">Price:</label> 
					<input type="number" id="itemPrice" name="itemPrice" placeholder="Number of items" class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Discount:</label> 
					<input type="number" id="itemDiscountPercentage" name="itemDiscountPercentage" placeholder="Enter Discount in %" class="span12">
				</div>
				<div class="row-fluid">
					<label class="strong">Upload Images:</label>
						<!-- Plupload -->
							
								<div id="pluploadUploader">
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
	<span class="btn btn-default"  aria-hidden="true">Close</span>
	<button type="submit" id="submitItem" name="submitItem">
		<span class="btn btn-primary"  aria-hidden="true">Add</span>
	</button>
</div>
</form>

</script>
<!-- // Modal footer END -->
