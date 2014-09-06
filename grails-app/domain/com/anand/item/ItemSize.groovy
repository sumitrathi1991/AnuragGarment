package com.anand.item

class ItemSize {
	
	String label
	float itemPrice
	boolean isDiscountable
	int quantity
	int qtyOrdered = 0
	boolean isNew
	float discountRate = 0.00
    static constraints = {
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
