package com.anand.item

class ItemSize {

	String label
	
	static hasMany = [itemColor : ItemColor]
	
    static constraints = {
    }
}
