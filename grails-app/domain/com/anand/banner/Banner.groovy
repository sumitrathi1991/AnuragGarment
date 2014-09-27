package com.anand.banner

import com.anand.image.Image

class Banner {
	String bannerName,bannerDescription,bannerPostion
	Image image
	boolean isPublished,isDeleted
    static constraints = {
		bannerDescription nullable:true
    }
}
