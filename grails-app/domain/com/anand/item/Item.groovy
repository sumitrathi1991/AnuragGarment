package com.anand.item

import com.anand.image.Image

class Item {
	String itemName,itemDescription,itemCode,itemBrand
	String itemType // new , feature, bestSeller
	String itemFor // men, women, kid
	String itemCategory //football,sports etc.
	boolean isPublished ,isDiscountable,isDeleted
	float itemPrice , discountRate = 0.00
	
	static hasMany = [itemSize: ItemSize]
	
	static constraints = {
		itemDescription nullable:true
		itemCode nullable:true
	}
	
	static mapping = {
		itemSize cascade : 'all'
		itemColor cascade : 'all'
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
		return (this.quantity - this.qtyOrdered)
	}
}
