package com.anand.item

import java.util.List;

import com.ananad.brand.Brand
import com.anand.banner.Banner;
import com.anand.image.Image

import grails.transaction.Transactional

@Transactional
class BrandService {

	def metadataService
    def serviceMethod() {

    }
	
	/**
	 *
	 * @param params
	 * @return
	 */
	Brand addBrand(params){
		Image image = metadataService.addItemImage(params);
		boolean isPublish = false;
		if(params.publishBrand == "1"){
			isPublish = true;
		}
		Brand brand = new Brand(brandName:params.brandName,brandDescription:params.brandDescription,isPublished:isPublish,logo:image)
		if(!brand.save(flush:true)){
			brand.errors.each{log.debug"error in saveing brand"+it}
		}
	}
	
	/**
	 *
	 * @return
	 */
	List getBrandList(){
		List brandList = Brand.findAllByIsDeleted(false);
		return brandList;
	}
}
