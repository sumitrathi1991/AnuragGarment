package com.anand.item

import com.anand.image.Image

class ItemColor {
	String itemColorValue
	static hasMany = [imageList : Image]
	
    static constraints = {
    }
}
