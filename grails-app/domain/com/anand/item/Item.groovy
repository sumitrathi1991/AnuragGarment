package com.anand.item

import com.anand.image.Image

class Item {
	String itemName
	String itemCode
	String itemDescription
	String itemBrand
	String itemType
	String itemSize
	String itemColor
	float itemPrice
	float discountRate
	int quantity
	int qtyOrdered
	int qtyPending
	int rating
	boolean isItemDiscountable
	boolean isNew
	
	static hasMany = [images : Image]
	
	static constraints = {
		itemDescription nullable:true
	}
	
	static mapping = {
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
