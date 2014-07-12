package com.anand.item

import com.anand.image.Image

class ItemColor {

	String label
	
	static hasMany = [image : Image]
	
    static constraints = {
    }
}
