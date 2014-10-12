package com.anand.item

import com.anand.banner.Banner
import com.anand.image.Image
import grails.transaction.Transactional

@Transactional
class BannerService {

	def metadataService
    def serviceMethod() {

    }
	/**
	 * 
	 * @param params
	 * @return
	 */
	Banner addBanner(params){
		Image image = metadataService.addItemImage(params);
		boolean isPublish = false;
		if(params.publishBanner == "1"){
			isPublish = true;
		}
		Banner banner = new Banner(bannerName:params.bannerName,bannerDescription:params.bannerDescription,bannerPostion:params.bannerPostion,isPublished:true,image:image)
		if(!banner.save(flush:true)){
			banner.errors.each{log.debug"error in saveing banner"+it}
		}
	}
	
	/**
	 * 
	 * @return
	 */
	List getBannerList(){
		List bannerList = Banner.findAllByIsDeleted(false);
		return bannerList;
	}
}
