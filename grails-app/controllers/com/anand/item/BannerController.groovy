package com.anand.item

import com.anand.banner.Banner
import com.anand.image.Image

class BannerController {

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
		log.debug"get banner list params: "+params
		List bannerList = Banner.findAllByIsPublishedAndIsDeleted(true,false);
		log.debug"bannerList "+bannerList
		render template:"/banner/bannerList", model : [bannerList:bannerList]
	}
	
	def addBanner(){
		log.debug"Add banner params: "+params
		/*HashMap result = new HashMap();
		result.status = "success";
		result.message = "Item has been added successfully."
		respond result, [formats:['json', 'xml']];*/
		render template:"/banner/bannerList"
	}
	
	def editBanner(){
		
	}
	
	def deleteBanner(){
		
	}
	
	def publishBanner(){
		
	}
}
