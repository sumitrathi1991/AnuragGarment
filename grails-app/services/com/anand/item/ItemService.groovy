package com.anand.item

import java.util.List;
import org.codehaus.groovy.grails.web.json.JSONObject;

import com.anand.image.Image
import com.sun.xml.internal.ws.org.objectweb.asm.Label;

import grails.transaction.Transactional

import org.apache.commons.lang.RandomStringUtils

@Transactional
class ItemService {

	def grailsApplication,metadataService
    def serviceMethod() {

    }
	String uploadFile(String fileName,Object file,String extension){
		String filePath = grailsApplication.config.file.upload.path+RandomStringUtils.randomAlphanumeric(12)+"."+extension
		if (!file?.empty ){
			file.transferTo(new File(filePath))
		}
		
		return filePath;
	}
	Item addItem(params){
		Item item = new Item(itemName: params.itemName,itemCode : "Item2",itemDescription: params.itemDescription,itemBrand : params.itemBrand,itemFor: params.itemFor,itemType:params.itemType,itemCategory:params.itemType,itemPrice : params.itemPrice, isDiscountable  :false)
		ItemSize itemSize = addItemSize(params)
		if(itemSize){
			ItemColor itemColor = addItemColor(params)
			if(itemColor){
				itemSize.addToItemColor(itemColor)
			}
			item.addToItemSize(itemSize);
		}
		
		if(!item.save(flush : true)){
			item.errors.each {log.debug"error in saving item == "+it}
			return
		}
		return item;
	}
	
	ItemSize addItemSize(params){
		ItemSize itemSize = new ItemSize(itemSizeValue : params.itemSize,  quantity: params.itemQuantity, isNew: true)
		if(!itemSize.save(flush:true)){
			itemSize.errors.each{log.debug"error in saving item Size == "+it}
			return
		}
		return itemSize;
	}
	
	ItemColor addItemColor(params){
		List uploadedImages = []
		uploadedImages = metadataService.addItemImages(params);
		ItemColor itemColor = new ItemColor(itemColorValue : params.itemColor)
		itemColor.imageList = uploadedImages
		if(!itemColor.save(flush:true)){
			itemColor.errors.each{log.debug"error in saving itemColor == "+it}
			return
		}
		return itemColor
	}
	
	
}
