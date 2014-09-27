package com.anand.item

class BrandController {

    def index() { }
	
	def getBrandList(){
		log.debug"getItemDetails params: "+params
		def brandList = Item.findAll();
		render template:"/brand/brandList", model : [item:brandList]
	}
	
	def addBrand(){
		log.debug"Add brand params: "+params
		HashMap result = new HashMap();
		result.status = "success";
		result.message = "Item has been added successfully."
		respond result, [formats:['json', 'xml']];
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
