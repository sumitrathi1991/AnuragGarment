function getOrderedUserList(){
	jQuery.ajax({
 	   type: 'POST',
        url: oderItemDataUrl,
        success: function(response,textStatus){
				$("#orderedTabDiv").html(response);
				},
        error:function(XMLHttpRequest,textStatus,errorThrown){}
    })
}

function getItemList(){
	jQuery.ajax({
    	   type: 'POST',
           url: itemDataUrl,
           success: function(response,textStatus){
				$("#manageTabDiv").html(response);
				},
           error:function(XMLHttpRequest,textStatus,errorThrown){}
       })
}

function getBannerList(){
	jQuery.ajax({
    	   type: 'POST',
           url: bannerListUrl,
           success: function(response,textStatus){
        	   $("#tab-BannerList").html("");
				$("#tab-BannerList").html(response);
				},
           error:function(XMLHttpRequest,textStatus,errorThrown){}
       })
}

function getBrandList(){
	jQuery.ajax({
    	   type: 'POST',
           url: brandListUrl,
           success: function(response,textStatus){
        	   $("#tab-BrandList").html("");
				$("#tab-BrandList").html(response);
				},
           error:function(XMLHttpRequest,textStatus,errorThrown){}
       })
}

function uploadItemSize(){
	var itemSizeFormData = $('#uploadItemSizeForm').serialize();
	jQuery.ajax({
		type : 'POST',
		url : uploadItemSizeUrl ,
		data : itemSizeFormData  + '&images=' +JSON.stringify({itemImages:itemImagesArray }) ,
		success : function(response,textStatus){
			$('#modal-AddItem-Size').modal('hide');
			$("#manageTabDiv").html(response);
		},
		error : function(response,textStatus){}
	});
}

function addBanner(){
	
	var uploadBannerFormData = $('#uploadBannerForm').serialize();
	jQuery.ajax({
		type : 'POST',
		url : uploadBannerUrl ,
		data : uploadBannerFormData + '&images=' +JSON.stringify({itemImages:itemImagesArray }) ,
		success : function(response,textStatus){
			$('#modal-AddBanner').modal('hide');
			
			$("#tab-BannerList").html(response);
		},
		error : function(response,textStatus){}
	});
}

function addBrand(){
	var uploadBrandFormData = $('#uploadBrandForm').serialize();
	jQuery.ajax({
		type : 'POST',
		url : uploadBrandUrl ,
		data : uploadBrandFormData  + '&images=' +JSON.stringify({itemImages:itemImagesArray }) ,
		success : function(response,textStatus){
			console.log("inside success");
			$('#modal-AddBrand').modal('hide');
			$("#tab-BrandList").html(response);
		},
		error : function(response,textStatus){}
	});
}