/* ==========================================================
 * FLAT KIT v1.2.1
 * file_managers.js
 * 
 * http://www.mosaicpro.biz
 * Copyright MosaicPro
 *
 * Built exclusively for sale @Envato Marketplaces
 * ========================================================== */ 
var itemImagesArray = []
function addItemOverlay(){
	
	/** UniformJS: Sexy form elements */
	if ($('.uniformjs').length) $('.uniformjs').find("select, input, button, textarea").uniform();
	multiFileUploader();
	itemImagesArray = []
}
function multiFileUploader () 
{
	
	/* Dropzone */
	if ($.fn.dropzone)
		$('form.dropzone').dropzone();
	
	/* Plupload */
	$('.pluploadUploaderClass').pluploadQueue({
		// General settings
		runtimes : 'gears,browserplus,html5',
		url : fileUploadUrl,
		max_file_size : '1000mb',
		max_file_count: 20, // user can add no more then 20 files at a time
		chunk_size : '1mb',
		
		multiple_queues : true,

		// Resize images on clientside if we can
		resize : {width : 320, height : 240, quality : 90},
		
		// Rename files by clicking on their titles
		rename: true,
		
		// Specify what files to browse for
		filters : [
			{title : "Image files", extensions : "jpg,gif,png"},
			
		],
		
		// Views to activate
        views: {
            list: true,
            thumbs: true, // Show thumbs
            active: 'thumbs'
        },
        
		// Flash settings
		flash_swf_url : commonPath + 'theme/scripts/plugins/forms/plupload/js/plupload.flash.swf',

		// Silverlight settings
		silverlight_xap_url : commonPath + 'theme/scripts/plugins/forms/plupload/js/plupload.silverlight.xap',
		
		init : {
			
			 PostInit: function() {
				 console.log("file upload function call");
	                // Called after initialization is finished and internal event handlers bound
				 console.log('[PostInit]');
	                 
	                document.getElementById('uploadfiles').onclick = function() {
	                    uploader.start();
	                    return false;
	                };
	            },
	            StateChanged: function(up) {
	                // Called when the state of the queue is changed
	                //log('[StateChanged]', up.state == plupload.STARTED ? "STARTED" : "STOPPED");
	            },
	            BeforeUpload: function(up, file) {
	                // Called right before the upload for a given file starts, can be used to cancel it if required
	            	console.log('[BeforeUpload]File: '+ file);
	            },
	  
	            UploadProgress: function(up, file) {
	                // Called while file is being uploaded
	            	console.log('[UploadProgress] File:'+ file+ "Total:"+ up.total);
	            },
	            FileFiltered: function(up, file) {
	                // Called when file successfully files all the filters
	            	console.log('[FileFiltered] File:'+ file);
	            },
	  
	            FilesAdded: function(up, files) {
	                // Called when files are added to queue
	            	console.log('[FilesAdded]');
	  
	                plupload.each(files, function(file) {
	                	console.log('  File:'+ file.name);
	                	
	                });
	            },
	  
	            FilesRemoved: function(up, files) {
	                // Called when files are removed from queue
	            	console.log('[FilesRemoved]');
	  
	                plupload.each(files, function(file) {
	                	console.log('  File:'+ file);
	                });
	            },
	  
	            FileUploaded: function(up, file, info) {
	                // Called when file has finished uploading
	            	console.log('[FileUploaded] File:'+file+"Info:"+ info);
	            	
	            	var obj = jQuery.parseJSON(info.response)
	            	
	            	itemImagesArray.push(obj.uploadedFileName)
	            	console.log(obj.uploadedFileName)
	            	
	            },
	  
	            ChunkUploaded: function(up, file, info) {
	                // Called when file chunk has finished uploading
	            	console.log('[ChunkUploaded] File:'+ file+ "Info:"+ info);
	            },
	 
	            UploadComplete: function(up, files) {
	                // Called when all files are either uploaded or failed
	            	console.log('[UploadComplete]');
	            },
	 
	            Destroy: function(up) {
	                // Called when uploader is destroyed
	            	console.log('[Destroy] ');
	            },
	  
	            Error: function(up, args) {
	                // Called when error occurs
	                console.log('[Error] '+ args);
	            }
		 }
	});
}