package com.anand.item

import com.anand.image.Image

class ItemColor {
	String label
	List<Image> imageList = []
	
	static hasMany = [imageList : Image]
	
    static constraints = {
    }
}
