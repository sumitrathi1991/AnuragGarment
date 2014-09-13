/* ==========================================================
 * FLAT KIT v1.2.1
 * file_managers.js
 * 
 * http://www.mosaicpro.biz
 * Copyright MosaicPro
 *
 * Built exclusively for sale @Envato Marketplaces
 * ========================================================== */ 

$(function() 
{
	/* Dropzone */
	if ($.fn.dropzone)
		$('form.dropzone').dropzone();
	
	/* Plupload */
	$("#pluploadUploader").pluploadQueue({
		// General settings
		runtimes : 'gears,browserplus,html5',
		url : '../upload.php',
		max_file_size : '1000mb',
		max_file_count: 20, // user can add no more then 20 files at a time
		chunk_size : '1mb',
		rename: true,
		multiple_queues : true,

		// Resize images on clientside if we can
		resize : {width : 320, height : 240, quality : 90},
		
		// Rename files by clicking on their titles
		rename: true,
		
		// Specify what files to browse for
		filters : [
			{title : "Image files", extensions : "jpg,gif,png"},
			{title : "Zip files", extensions : "zip"}
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
		silverlight_xap_url : commonPath + 'theme/scripts/plugins/forms/plupload/js/plupload.silverlight.xap'
	});

	// Client side form validation
	$('#pluploadForm').submit(function(e) {
        var uploader = $('#pluploadUploader').pluploadQueue();

        // Files in queue upload them first
        if (uploader.files.length > 0) {
            // When all files are uploaded submit form
            uploader.bind('StateChanged', function() {
                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
                    $('#pluploadForm').submit();
                }
            });
                
            uploader.start();
        } else {
            alert('You must queue at least one file.');
        }

        return false;
    });
});