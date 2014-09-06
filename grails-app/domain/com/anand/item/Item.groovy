package com.anand.item

import com.anand.image.Image

class Item {
	String itemName
	String itemCode
	String itemDescription
	String itemBrand
	String itemType
	String itemFor
	boolean isPublished
	
	static hasMany = [itemSize: ItemSize, itemColor : ItemColor]
	
	static constraints = {
		itemDescription nullable:true
	}
	
	static mapping = {
		itemSize cascade : 'all'
		itemColor cascade : 'all'
		version false
	}
}
