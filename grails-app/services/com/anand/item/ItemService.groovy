package com.anand.item

import grails.transaction.Transactional
import org.apache.commons.lang.RandomStringUtils

@Transactional
class ItemService {

	def grailsApplication
    def serviceMethod() {

    }
	String uploadFile(Object file,String extension){
		String filePath = grailsApplication.config.file.upload.path+RandomStringUtils.randomAlphanumeric(12)+"."+extension
		if (!file?.empty ){
			file.transferTo(new File(filePath))
		}
		
		return filePath;
	}
}
