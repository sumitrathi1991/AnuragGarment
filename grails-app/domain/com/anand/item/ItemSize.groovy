package com.anand.item

import javax.persistence.CascadeType;

class ItemSize {

	String label
	
	static belongsTo = [item: Item]
	
	static hasMany = [itemColor : ItemColor]
	
   	static mapping = {
		itemColor cascade :'all'
		version false
	}
}
