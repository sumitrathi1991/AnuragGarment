package com.ananad.brand

import com.anand.image.Image;

class Brand {
	String brandName,brandDescription
	Image logo
	boolean isPublished,isDeleted
	static hasMany = [image: Image]
    static constraints = {
		brandDescription nullable:true
		
    }
}
