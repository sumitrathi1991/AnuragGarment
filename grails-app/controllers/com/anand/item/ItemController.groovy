package com.anand.item

class ItemController {
	static scaffold = true
	def index(){}
	
	def saveItem(){
		log.debug"in saveItem"
		Item item = new Item(itemName:"Shoe1", itemCode: "sh1", itemSize: "1", itemColor:'Black', itemDescription:"Light Weight",itemBrand: "Nike",ItemType: "Male",itemPrice: "200.00",isItemDiscountable:false)
		if(!item.save(flush:true))
		item.errors.each { log.debug"Error in saving item == "+it}
	}
	
	def updateItem(){
		
	}
	
	def deleteItem(){
		
	}
}
