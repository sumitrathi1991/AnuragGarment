package com.anand.item

import com.anand.image.Image

class ItemController {
	static scaffold = true
	def index(){}
	
	def saveItem(){
		log.debug"in saveItem"
		Image image = new Image(name: "product9.jpeg",imageUrl : "/home/oodles/anand/images/product9.jpeg", imageSize: "1234", width:"50", height :"50")
		ItemColor itemColor = new ItemColor(label: "grey")
		itemColor.addToImage(image)
		ItemSize itemSize = new ItemSize(label: "7")
		itemSize.addToItemColor(itemColor)
		Item item = new Item(itemName: "item9",itemCode : "IT9",itemDescription: "black",itemBrand : "Lakhani",itemType: "ladies",itemPrice: 20.00,discountRate:0.00,quantity:2,qtyOrdered:0,qtyPending:0,isItemDiscountable: false)
		item.addToItemSize(itemSize)
		if(!item.save(flush : true)){
			item.errors.each {log.debug"error in saving item == "+it}
		}
	}
	
	def updateItem(){
		
	}
	
	def deleteItem(){
		
	}
}
