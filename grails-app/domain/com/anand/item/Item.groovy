package com.anand.item

class Item {
	String itemName
	String itemCode
	String itemDescription
	String itemBrand
	String itemType
	float itemPrice
	float discountRate
	int quantity
	int qtyOrdered
	int qtyPending
	boolean isItemDiscountable
	
	static hasMany = [itemSize : ItemSize]
	
	static constraints = {
		itemDescription nullable:true
	}
	
	static mapping = {
		itemSize cascade :'all'
		version false
	}
	
	float getSalePrice(){
		float salePrice = 0.00
		if(isItemDiscountable)
		salePrice = this.itemPrice - (this.itemPrice * (this.discountRate / 100))
		else
		salePrice = this.itemPrice
		return salePrice
	}
	
	int getAvailableQuantity(){
		return (this.quantity - (this.qtyOrdered + this.qtyPending))
	}

   
}
