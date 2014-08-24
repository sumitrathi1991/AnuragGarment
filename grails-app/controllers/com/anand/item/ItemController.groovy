package com.anand.item

import com.anand.image.Image

class ItemController {
	static scaffold = true
	def grailsApplication
	def index(){}
	
	def saveItem(){
		log.debug"in saveItem"
		List itemType = ["sports","running","football","cricket","formal","casual","snicker","loafers","slipper","boots"]
		for(int i = 1; i<itemType.size();i++){
			Image image = new Image(name: "product"+i+".jpeg",imageUrl : grailsApplication.config.grails.anand.imageUrl+"product"+i+".jpeg", imageSize: "1234", width:"50", height :"50")
			Item item = new Item(itemName: "mens"+i,itemCode : "IT9",itemDescription: "black",itemBrand : "Sparx",itemFor: "mens",itemPrice: 20.00,discountRate:0.00,quantity:2,qtyOrdered:0,isItemDiscountable: false,itemSize : "8", itemColor : "brown",isNew :true,rating :4, itemType:itemType[i])
			item.addToImages(image)
			if(!item.save(flush : true)){
				item.errors.each {log.debug"error in saving item == "+it}
			}
		}
		
		
	}
	
	def updateItem(){
		
	}
	
	def deleteItem(){
		
	}
}
