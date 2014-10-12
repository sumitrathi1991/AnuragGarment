package com.anand.item

import com.anand.banner.Banner
import com.anand.image.Image

class BannerController {

	def bannerService
    def index() { }
	
	def createBanner(){
		for(int i=1;i<5;i++){
			Image image = new Image(name: "banner"+i+".jpg",imageUrl : grailsApplication.config.grails.anand.imageUrl+"banner"+i+".jpg", imageSize: "1234", width:"50", height :"50").save();
			Banner banner = new Banner(bannerName:"banner"+i,bannerDescription:"banner Description "+i,bannerPostion:"Home",isPublished:true,image:image)
			if(!banner.save(flush:true)){
				banner.errors.each{log.debug"error in saveing banner"+it}
			}
		}
	}
	
	def getBannerList(){
		List bannerList = bannerService.getBannerList();
		render template:"/banner/bannerList", model : [bannerList:bannerList]
	}
	
	def addBanner(){
		bannerService.addBanner(params)
		/*HashMap result = new HashMap();
		result.status = "success";
		result.message = "Item has been added successfully."
		log.debug"result "+result
		respond result, [formats:['json', 'xml']];*/
		List bannerList = bannerService.getBannerList();
		render template:"/banner/bannerList", model : [bannerList:bannerList]
	}
	
	def editBanner(){
		
	}
	
	def deleteBanner(){
		Banner banner = Banner.findByIdAndIsDeleted(params.id,false);
		banner.isDeleted = true;
		if(!banner.save(flush:true)){
			banner.errors.each {log.debug"error in publishing the item "+it}
		}
		List bannerList = bannerService.getBannerList();
		render template:"/banner/bannerList", model : [bannerList:bannerList]
	}
	
	def publishBanner(){
		Banner banner = Banner.findByIdAndIsDeleted(params.id,false);
		if(banner.isPublished == true){
			banner.isPublished = false;
		}else{
			banner.isPublished = true;
		}
		if(!banner.save(flush:true)){
			banner.errors.each {log.debug"error in publishing the item "+it}
			
		}
		List bannerList = bannerService.getBannerList();
		render template:"/banner/bannerList", model : [bannerList:bannerList]
	}
}
