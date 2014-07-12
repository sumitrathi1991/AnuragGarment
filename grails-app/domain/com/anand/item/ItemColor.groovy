package com.anand.item

import com.anand.image.Image

class ItemColor {

	String label
	
	static hasMany = [image : Image]
	
	static belongsTo = [itemSize: ItemSize]
	
	static mapping = {
		image cascade :'all'
		version false
	}
	
    static constraints = {
    }
}
