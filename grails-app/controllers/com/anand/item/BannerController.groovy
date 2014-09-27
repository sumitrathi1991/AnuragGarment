package com.anand.item

class BannerController {

    def index() { }
	
	def getBannerList(){
		log.debug"get banner list params: "+params
		def bannerList = Item.findAll();
		render template:"/banner/bannerList", model : [item:bannerList]
	}
	
	def addBanner(){
		
	}
	
	def editBanner(){
		
	}
	
	def deleteBanner(){
		
	}
	
	def publichBanner(){
		
	}
}
