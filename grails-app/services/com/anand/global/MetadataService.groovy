package com.anand.global

import java.util.List;
import org.codehaus.groovy.grails.web.json.JSONObject;
import com.anand.image.Image
import com.sun.xml.internal.ws.org.objectweb.asm.Label;
import grails.transaction.Transactional

@Transactional
class MetadataService {

    def serviceMethod() {

    }
	
	List addItemImages(params){
		List uploadedImages = []
		JSONObject jObject  = new JSONObject(params.images); // json
		for(int i=0;i<jObject.itemImages.size();i++){
			Image image = new Image(name: "product"+i+".jpg",imageUrl : jObject.itemImages[i], imageSize: "1234", width:"50", height :"50").save()
			uploadedImages.add(image)
		}
		return uploadedImages
	}
	
	Image addItemImage(params){
		JSONObject jObject  = new JSONObject(params.images);
		Image image = new Image(name: "product.jpg",imageUrl : jObject.itemImages[0], imageSize: "1234", width:"50", height :"50");
		if(!image.save(flush:true)){
			image.errors.each{log.debug"error in saveing banner Image "+it}
		}
		return image
	}
}
