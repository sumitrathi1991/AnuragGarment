package com.anand.item

import com.anand.image.Image

class ItemController {
	static scaffold = true
	def index(){}
	
	def saveItem(){
		log.debug"in saveItem"
		Image image = new Image(name: "product9.jpeg",imageUrl : "/home/oodles/anand/images/product9.jpeg", imageSize: "1234", width:"50", height :"50")
		Item item = new Item(itemName: "item9",itemCode : "IT9",itemDescription: "black",itemBrand : "Sparx",itemType: "ladies",itemPrice: 20.00,discountRate:0.00,quantity:2,qtyOrdered:0,qtyPending:0,isItemDiscountable: false,itemSize : "8", itemColor : "brown",isNew :true,rating :4)
		item.addToImages(image)
		if(!item.save(flush : true)){
			item.errors.each {log.debug"error in saving item == "+it}
		}
	}
	
	def updateItem(){
		
	}
	
	def deleteItem(){
		
	}
}
