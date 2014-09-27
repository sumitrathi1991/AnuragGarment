package com.anand.item

import com.ananad.brand.Brand
import com.anand.image.Image

class BrandController {

    def index() { }
	def createBrand(){
		for(int i=1;i<8;i++){
			Image logo = new Image(name: "brand"+i+".jpg",imageUrl : grailsApplication.config.grails.anand.imageUrl+"brand"+i+".jpg", imageSize: "1234", width:"50", height :"50").save();
			Brand banner = new Brand(brandName:"brand"+i,brandDescription:"brand Description "+i,isPublished:true,logo:logo)
			if(!banner.save(flush:true)){
				banner.errors.each{log.debug"error in saveing banner"+it}
			}
		}
	}
	
	def getBrandList(){
		log.debug"getItemDetails params: "+params
		List brandList = Brand.findAllByIsPublishedAndIsDeleted(true,false);
		log.debug"brand List "+brandList
		render template:"/brand/brandList", model : [brandList:brandList]
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
		log.debug"publish item params: "+params
		Brand brand = Brand.findByIdAndIsDeleted(params.id,false);
		log.debug"item "+brand.isPublished
		if(brand.isPublished == true){
			brand.isPublished = false;
		}else{
			brand.isPublished = true;
		}
		if(!brand.save(flush:true)){
			brand.errors.each {log.debug"error in publishing the item "+it}
			
		}
		List brandList = brand.findAllByIsDeleted(false);
		render template:"/brand/brandList", model : [brandList:brandList]
	}
	
	def getBrandDetails(){
		log.debug"getItemDetails params: "+params
		Brand brand = Brand.findById(params.id);
		render template:"/brand/brandDetails", model : [brand:brand]
	}
}
