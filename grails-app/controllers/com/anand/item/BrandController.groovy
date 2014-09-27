package com.anand.item

class BrandController {

    def index() { }
	
	def getBrandList(){
		log.debug"getItemDetails params: "+params
		def brandList = Item.findAll();
		render template:"/brand/brandList", model : [item:brandList]
	}
	
	def addBrand(){
		
	}
	
	def deleteBrand(){
		
	}
	
	def editBrand(){
		
	}
	
	def publishBrand(){
		
	}
	
	def getBrandDetail(){
		
	}
}
