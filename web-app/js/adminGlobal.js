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

function uploadItemSize(){
	console.log(uploadItemSizeUrl)
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

