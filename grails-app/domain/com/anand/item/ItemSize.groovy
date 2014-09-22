package com.anand.item

class ItemSize {
	
	String itemSizeValue
	int quantity
	int qtyOrdered = 0
	boolean isNew
	
    static constraints = {
    }
	
	static hasMany = [itemColor : ItemColor]

	
}
