package com.anand.item

import java.util.List;
import org.codehaus.groovy.grails.web.json.JSONObject;

import com.anand.image.Image
import com.sun.xml.internal.ws.org.objectweb.asm.Label;

import grails.transaction.Transactional

import org.apache.commons.lang.RandomStringUtils

@Transactional
class ItemService {

	def grailsApplication
    def serviceMethod() {

    }
	String uploadFile(Object file,String extension){
		String filePath = grailsApplication.config.file.upload.path+RandomStringUtils.randomAlphanumeric(12)+"."+extension
		if (!file?.empty ){
			file.transferTo(new File(filePath))
		}
		
		return filePath;
	}
	Item addItem(params){
		Item item = new Item(itemName: params.itemName,itemCode : "Item2",itemDescription: params.itemDescription,itemBrand : params.itemBrand,itemFor: params.itemFor,itemType:params.itemType,itemCategory:params.itemType)
		ItemSize itemSize = addItemSize(params)
		if(itemSize){
			item.addToItemSize(itemSize);
		}
		ItemColor itemColor = addItemColor(params)
		if(itemColor){
			item.addToItemColor(itemColor)
		}
		if(!item.save(flush : true)){
			item.errors.each {log.debug"error in saving item == "+it}
			return
		}
		return item;
	}
	
	ItemSize addItemSize(params){
		ItemSize itemSize = new ItemSize(label : params.itemSize, itemPrice : params.itemPrice, isDiscountable  :false, quantity: params.itemQuantity, isNew: true)
		if(!itemSize.save(flush:true)){
			itemSize.errors.each{log.debug"error in saving item Size == "+it}
			return
		}
		return itemSize;
	}
	
	ItemColor addItemColor(params){
		List uploadedImages = []
		uploadedImages = addItemImages(params);
		ItemColor itemColor = new ItemColor(label : params.itemColor)
		itemColor.imageList = uploadedImages
		if(!itemColor.save(flush:true)){
			itemColor.errors.each{log.debug"error in saving itemColor == "+it}
			return
		}
		return itemColor
	}
	
	List addItemImages(params){
		List uploadedImages = []
		JSONObject jObject  = new JSONObject(params.images); // json
		//JSONObject data = jObject.getJSONObject("itemImages"); // get data object
		log.debug"data "+jObject.itemImages.size()
		for(int i=0;i<jObject.itemImages.size();i++){
			Image image = new Image(name: "product"+i+".jpeg",imageUrl : jObject.itemImages[i], imageSize: "1234", width:"50", height :"50").save()
			uploadedImages.add(image)
		}
		return uploadedImages
	}
}
