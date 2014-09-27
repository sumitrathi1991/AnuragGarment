package com.anand.item

class BannerController {

    def index() { }
	
	def getBannerList(){
		log.debug"get banner list params: "+params
		def bannerList = Item.findAll();
		render template:"/banner/bannerList", model : [item:bannerList]
	}
	
	def addBanner(){
		log.debug"Add banner params: "+params
		HashMap result = new HashMap();
		result.status = "success";
		result.message = "Item has been added successfully."
		respond result, [formats:['json', 'xml']];
	}
	
	def editBanner(){
		
	}
	
	def deleteBanner(){
		
	}
	
	def publichBanner(){
		
	}
}
