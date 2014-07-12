package com.anand.image

import com.anand.item.ItemColor

class Image {

	String name
	String imageUrl
	int imageSize
	int width
	int height
	
	static mapping ={
		version false
	}
	
	static belongsTo = [itemColor : ItemColor]
	
    static constraints = {
    }
}
